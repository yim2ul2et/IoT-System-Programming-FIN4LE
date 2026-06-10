#pragma once
#include <string>

class lcd {
private:
  int lcdPin, lcdState;
public:
  void lcdOutput(const std::string &str);
  void lcdClear();
};