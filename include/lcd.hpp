#pragma once
#include <iostream>
#include <lcd.h>
#include <wiringPi.h>
#include <map>
#include <string>

class lcd {
private:
  std::map <char, char> KorToEng;
  int lcdPin, lcdState;
public:
  std::string changeKorToEng(const std::wstring &str);
  void lcdOutput(const std::wstring &str);
  void lcdClear();
};