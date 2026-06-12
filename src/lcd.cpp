#include "include/lcd.hpp"

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

void lcd::lcdOutput(const wstring &str) {
  lcdPosition(lcdState, 0, 0);
  auto en = changeKorToEng(str);
  lcdPuts(lcdState, en.c_str());
  cout << "LCD output: " << en << endl;
}

string lcd::changeKorToEng(const wstring &str) {
  string result;
  for (auto &ch : str) {
    if (KorToEng.find(ch) != KorToEng.end()) result += ch;
  }
  return result;
}

/* TODO
  1. LCD 출력 및 clear시 제대로 되었는지 확인하는 코드 작성
*/