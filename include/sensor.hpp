#pragma once

#include <wiringPi.h>

#include <cstdint>
#include <iostream>

class Sensor {
 public:
  Sensor();
  ~Sensor();
  bool detectObject();
};