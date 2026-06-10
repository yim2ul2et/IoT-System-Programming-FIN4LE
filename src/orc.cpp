#include <opencv2/opencv.hpp>
#include <iostream>
#include "../include/orc.hpp"

using namespace cv;
using namespace std;

bool orc::takePicture() {
  VideoCapture cap(0);
  Mat frame;
  
  if (!cap.isOpened()) {
      cerr << "카메라를 열 수 없습니다." << endl;
      return false;
  }

  cap >> frame;
  if (frame.empty()) {
      cout << "영상이 끝났거나 프레임을 읽을 수 없습니다." << endl;
      return false;
  }

  imwrite("../assets/image.jpg", frame);
  cap.release();
  return true;
}

Mat orc::preprocessing(const Mat &src) {
    if (src.empty()) {
      cout << "이미지를 불러올 수 없습니다.";
      return src;
    }

    Mat gray, blurred, binary, preprocessed;

    // 2. 그레이스케일 변환
    cvtColor(src, gray, COLOR_BGR2GRAY);

    // 3. 가우시안 블러로 노이즈 제거 (커널 사이즈는 이미지 크기에 맞게 조절)
    GaussianBlur(gray, blurred, Size(5, 5), 0);

    // 4. 적응형 이진화 (Adaptive Thresholding)
    adaptiveThreshold(blurred, binary, 255, ADAPTIVE_THRESH_GAUSSIAN_C, THRESH_BINARY, 11, 2);

    // 5. 형태학적 연산 (Opening: 작은 노이즈 제거)
    Mat kernel = getStructuringElement(MORPH_RECT, Size(2, 2));
    morphologyEx(binary, preprocessed, MORPH_OPEN, kernel);

    return preprocessed;
  }