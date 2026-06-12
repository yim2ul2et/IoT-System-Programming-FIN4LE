#include "../include/lcd.hpp"

#define LCD_RS 11
#define LCD_E 10
#define LCD_D4 6
#define LCD_D5 5
#define LCD_D6 4
#define LCD_D7 1

Lcd::Lcd() {
  std::cout << "LCD is created" << std::endl;
  lcdState = lcdInit(2, 16, 4, LCD_RS, LCD_E, LCD_D4, LCD_D5, LCD_D6, LCD_D7, 0,
                     0, 0, 0);
  if (lcdState) std::cerr << "LCD init is failed" << std::endl;

  lcdPosition(lcdState, 0, 0);
}

Lcd::~Lcd() {
  lcdClear(lcdState);
  std::cout << "LCD is destroyed" << std::endl;
}

void Lcd::clear() {
  lcdClear(lcdState);
  std::cout << "LCD is cleared" << std::endl;
}

void Lcd::print(const std::string& str) {
  lcdPosition(lcdState, 0, 0);
  lcdPuts(lcdState, str.c_str());
  std::cout << "LCD output: " << str << std::endl;
}