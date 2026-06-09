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