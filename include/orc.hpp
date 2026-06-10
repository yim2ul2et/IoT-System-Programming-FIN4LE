#pragma once
#include <iostream>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

class orc {
public:
  bool takePicture();

  Mat preprocessing(const Mat &src);
};