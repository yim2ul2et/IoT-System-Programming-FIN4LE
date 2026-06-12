#pragma once
#include <iostream>
#include <opencv2/opencv.hpp>

class Camera {
 private:
  cv::VideoCapture cam;

 public:
  bool openCamera(int index);
  cv::Mat capture();
};