#include "../include/sensor.hpp"

#define TRIG_PIN 21
#define ECHO_PIN 22
#define LOW_RANGE_DIST 3
#define HIGH_RANGE_DIST 100

Sensor::Sensor() {
  pinMode(TRIG_PIN, OUTPUT);
  pinMode(ECHO_PIN, INPUT);
  digitalWrite(TRIG_PIN, LOW);
  std::cout << "Sensor is created" << std::endl;
}

Sensor::~Sensor() {
  digitalWrite(TRIG_PIN, LOW);
  std::cout << "Sensor is destroyed" << std::endl;
}

bool Sensor::detectObject() {
  long long begin_time, start_time, end_time;

  // begin time: 초음파 발사 시간
  begin_time = micros();
  digitalWrite(TRIG_PIN, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG_PIN, LOW);

  // start time: ECHO가 LOW->HIGH를 탐지한 최초 시간
  start_time = micros();
  while (digitalRead(ECHO_PIN) == LOW &&
         ((micros() - begin_time + UINT32_MAX) % UINT32_MAX < 1e6))
    start_time = micros();

  // end time: ECHO가 HIGH->LOW를 탐지한 최초 시간
  end_time = micros();
  while (digitalRead(ECHO_PIN) == HIGH &&
         ((micros() - begin_time + UINT32_MAX) % UINT32_MAX < 1e6))
    end_time = micros();

  // 거리 계산 (단위: cm)
  long double difference = (end_time - start_time + UINT32_MAX) % UINT32_MAX;
  long double distance = 0.03465 * (difference / 2.0);

  // 3 ~ 100 cm 범위 이내로 측정 시 TRUE return
  if (distance < LOW_RANGE_DIST || HIGH_RANGE_DIST < distance) {
    std::cout << "Out of Range" << std::endl;
    return false;
  } else {
    std::cout << "Distance : " << distance << "cm" << std::endl;
    return true;
  }
}