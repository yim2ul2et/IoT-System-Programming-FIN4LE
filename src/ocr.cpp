#include "../include/ocr.hpp"

bool Ocr::modelInit(const std::string& onnx_file) {
  net = cv::dnn::readNetFromONNX(onnx_file);
  if (net.empty()) {
    std::cerr << "모델 파일을 찾을 수 없습니다." << std::endl;
  }
  return !net.empty();
}

cv::Mat Ocr::cutting(const cv::Mat& src) {
  if (src.empty()) {
    std::cerr << "이미지를 불러올 수 없습니다." << std::endl;
    return src;
  }

  if (net.empty()) {
    std::cerr << "모델이 선택되지 않았습니다." << std::endl;
    return src;
  }

  // 원본 이미지의 복사본 생성
  cv::Mat copy = src.clone();

  // 라즈베리파이4 ARM CPU 명령어 최적화 가속
  net.setPreferableBackend(cv::dnn::DNN_BACKEND_OPENCV);
  net.setPreferableTarget(cv::dnn::DNN_TARGET_CPU);

  cv::Mat blob;
  cv::dnn::blobFromImage(src, blob, 1.0 / 255.0,
                         cv::Size(IMAGE_SIZE, IMAGE_SIZE), cv::Scalar(), true,
                         false);
  net.setInput(blob);

  // 모델 추론
  std::vector<cv::Mat> outputs;
  net.forward(outputs, net.getUnconnectedOutLayersNames());
  cv::Mat output(outputs[0].size[1], outputs[0].size[2], CV_32F,
                 outputs[0].ptr<float>());

  // 결과 행렬의 행의 개수와 열의 길이
  int rows = output.rows;
  int dimensions = output.cols;

  // 640 x 640 사진과 원본 사진의 비율 계산
  float x_factor = src.cols / IMAGE_SIZE;
  float y_factor = src.rows / IMAGE_SIZE;
  float* data = (float*)output.data;

  // 영역을 추려서 번호판에 대한 영역 및 신뢰도 저장
  std::vector<cv::Rect> boxes;
  std::vector<float> confidences;
  for (int i = 0; i < rows; i++, data += dimensions) {
    float objectness = data[4];  // data[4]: 사물 존재 확률 (Objectness)
    if (objectness < SCORE_THRESHOLD) continue;

    // 차, 번호판이 가능한 영역 (data[5], data[6]) 중에서 최대 확률을 가지는
    // 영역을 추출
    float* classes_scores = data + 5;
    cv::Mat scores(1, 2, CV_32F, classes_scores);
    cv::Point class_id_point;
    double max_class_score;
    minMaxLoc(scores, 0, &max_class_score, 0, &class_id_point);

    // 영역이 가리키는 개체가 번호판이면서, 신뢰도 50% 초과면 영역을 저장
    float total_score = objectness * max_class_score;
    if (total_score > SCORE_THRESHOLD && class_id_point.x == 1) {
      // [중심X, 중심Y, 가로폭, 세로폭]
      float cx = data[0], cy = data[1], w = data[2], h = data[3];

      // 좌상단 기준으로 좌표 변환 후 원본 이미지 스케일로 복원
      int left = int((cx - 0.5 * w) * x_factor);
      int top = int((cy - 0.5 * h) * y_factor);
      int width = int(w * x_factor);
      int height = int(h * y_factor);

      // 영역, 신뢰도 저장
      boxes.push_back(cv::Rect(left, top, width, height));
      confidences.push_back(total_score);
    }
  }

  // 중복된 영역 압축
  std::vector<int> idxs;
  cv::dnn::NMSBoxes(boxes, confidences, SCORE_THRESHOLD, NMS_THRESHOLD, idxs);
  std::cout << "감지 번호판 개수 : " << idxs.size() << std::endl;

  // 번호판 return (여러개 있을 경우 아래쪽에 있는 걸 우선)
  cv::Mat cropped;
  for (const int& idx : idxs) {
    cv::Rect box = boxes[idx];
    box = box & cv::Rect(0, 0, copy.cols, copy.rows);
    if (!box.empty()) {
      cropped = src(box);
      bool success = imwrite("./images/cutted.jpg", cropped);
      if (success) std::cout << "번호판 저장 성공" << std::endl;
    }
  }
  return cropped;
}

cv::Mat Ocr::preprocessing(const cv::Mat& src) {
  if (src.empty()) {
    std::cerr << "이미지를 불러올 수 없습니다." << std::endl;
    return src;
  }

  cv::Mat resized, gray, blurred, binary, result;

  cv::resize(src, resized, cv::Size(), 4.0, 4.0,
             cv::INTER_CUBIC);  // 사이즈 변환
  cv::imwrite("./images/resized.jpg", resized);

  cv::cvtColor(resized, gray, cv::COLOR_BGR2GRAY);  // 흑백 변환
  cv::imwrite("./images/gray.jpg", gray);

  cv::GaussianBlur(gray, blurred, cv::Size(3, 3), 0);  // 가우시안 블러
  cv::imwrite("./images/blurred.jpg", blurred);

  cv::adaptiveThreshold(blurred, binary, 255, cv::ADAPTIVE_THRESH_GAUSSIAN_C,
                        cv::THRESH_BINARY, 155, 5);  // 이진화
  cv::imwrite("./images/binary.jpg", binary);

  cv::Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(2, 2));
  cv::morphologyEx(binary, result, cv::MORPH_OPEN, kernel);  // 외곽선 정리
  cv::imwrite("./images/result.jpg", result);

  std::cout << "전처리 완료" << std::endl;
  return result;
}

std::string Ocr::changeText(const cv::Mat& src) {
  if (src.empty()) {
    std::cerr << "이미지를 불러올 수 없습니다." << std::endl;
    return "";
  }

  tesseract::TessBaseAPI* ocrEngine = new tesseract::TessBaseAPI();
  if (ocrEngine->Init(nullptr, "kor", tesseract::OEM_DEFAULT)) {
    std::cerr << "Tesseract OCR 엔진을 초기화할 수 없습니다." << std::endl;
    return "";
  }

  ocrEngine->SetImage(src.data, src.cols, src.rows, 1, src.step);
  std::string result = ocrEngine->GetUTF8Text();

  std::cout << "=============== 텍스트 인식 결과 ===============\n";
  std::cout << result;
  std::cout << "=============================================" << std::endl;

  ocrEngine->End();
  delete ocrEngine;
  return result;
}