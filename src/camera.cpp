#include "../include/camera.hpp"

bool Camera::openCamera(int index) {
  cam.open(index);
  return cam.isOpened();
}

cv::Mat Camera::capture() {
  if (!cam.isOpened()) {
    std::cerr << "카메라가 열리지 않았습니다" << std::endl;
    return cv::Mat();
  }

  cv::Mat frame;
  cam >> frame;
  cv::imwrite("../assets/images/cam.jpg", frame);
  std::cout << "카메라 사진 촬영 완료" << std::endl;
  return frame;
}