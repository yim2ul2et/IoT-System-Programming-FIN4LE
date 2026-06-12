#pragma once
#include <leptonica/allheaders.h>
#include <tesseract/baseapi.h>

#include <iostream>
#include <opencv2/dnn.hpp>
#include <opencv2/opencv.hpp>
#include <string>
#include <vector>
#include <map>

class Ocr {
 private:
  std::map <std::string, std::string> mapping;
  const float IMAGE_SIZE = 640;
  const float SCORE_THRESHOLD = 0.5;
  const float NMS_THRESHOLD = 0.4;
  cv::dnn::Net net;

 public:
  Ocr();
  bool modelInit(const std::string& onnx_file);
  cv::Mat cutting(const cv::Mat& src);
  cv::Mat preprocessing(const cv::Mat& src);
  std::string changeText(const cv::Mat& src);
  std::string parsing(const std::string &str);
};