#pragma once
#include <softPwm.h>
#include <wiringPi.h>

#include <iostream>

class Gate {
 private:
  void setRGB(bool red, bool green, bool blue);

 public:
  Gate();
  ~Gate();
  bool open();
  bool close();
};