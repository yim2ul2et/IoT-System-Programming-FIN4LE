#pragma once

#include <iostream>
#include <lcd.h>
#include <wiringPi.h>
#include <map>
#include <string>

class Lcd {
private:
  int lcdState;
public:
  Lcd();
  ~Lcd();
  void print(const std::string &str);
  void clear();
};