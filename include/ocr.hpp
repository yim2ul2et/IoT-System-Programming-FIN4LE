#pragma once
#include <leptonica/allheaders.h>
#include <tesseract/baseapi.h>

#include <iostream>
#include <opencv2/dnn.hpp>
#include <opencv2/opencv.hpp>
#include <string>
#include <vector>

class Ocr {
 private:
  const float IMAGE_SIZE = 640;
  const float SCORE_THRESHOLD = 0.5;
  const float NMS_THRESHOLD = 0.4;

 public:
  cv::Mat cutting(const cv::Mat& src);
  cv::Mat preprocessing(const cv::Mat& src);
  std::string changeText(const cv::Mat& src);
};