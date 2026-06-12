#include "../include/gate.hpp"

#define RED_PIN 25
#define GREEN_PIN 24
#define BLUE_PIN 23
#define MOTER_PIN 26

void Gate::setRGB(bool red, bool green, bool blue) {
  digitalWrite(RED_PIN, red);
  digitalWrite(GREEN_PIN, green);
  digitalWrite(BLUE_PIN, blue);
  std::cout << "Gate is created" << std::endl;
}

Gate::Gate() {
  softPwmCreate(MOTER_PIN, 0, 200);
  pinMode(RED_PIN, OUTPUT);
  pinMode(GREEN_PIN, OUTPUT);
  pinMode(BLUE_PIN, OUTPUT);
  close();
  std::cout << "Gate is destroyed" << std::endl;
}

Gate::~Gate() {
  setRGB(0, 0, 0);
}

bool Gate::open() {
  std::cout << "게이트가 열렸습니다." << std::endl;
  setRGB(0, 1, 0);
  softPwmWrite(MOTER_PIN, 25);
  delay(1000);
  return true;
}

bool Gate::close() {
  std::cout << "게이트가 닫혔습니다." << std::endl;
  setRGB(1, 0, 0);
  softPwmWrite(MOTER_PIN, 15);
  delay(1000);
  return true;
}