#include <iostream>
#include <lcd.h>
#include <wiringPi.h>
#include "../include/lcd.hpp"

using namespace std;

lcd::lcd() {
  cout << "LCD is created" << endl;
  lcdState = lcdInit(2, 16, 4, 11, 10, 6, 5, 4, 1, 0, 0, 0, 0);
  if (lcdState) cout << "LCD init is failed" << endl;
}

lcd::~lcd() {
  lcdClear();
  cout << "LCD is destroyed" << endl;
}

void lcd::lcdClear() {
  lcdClear();
  cout << "LCD is cleared" << endl;
}

void lcd::lcdOutput(const string &str) {
  lcdPosition(lcdState, 0, 0);
  lcdPuts(lcdState, str.c_str());
  cout << "LCD output: " << str << endl;
}

/* TODO
  1. LCD 출력 및 clear시 제대로 되었는지 확인하는 코드 작성
*/