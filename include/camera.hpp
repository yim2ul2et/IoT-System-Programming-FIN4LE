#pragma once
#include <opencv2/opencv.hpp>
#include <iostream>

class Camera {
private:
  cv::VideoCapture cam;
public:
  bool openCamera(int index);
  cv::Mat capture();
};