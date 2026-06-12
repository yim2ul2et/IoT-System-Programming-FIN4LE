#include <csignal>

#include "../include/camera.hpp"
#include "../include/gate.hpp"
#include "../include/lcd.hpp"
#include "../include/ocr.hpp"
#include "../include/sensor.hpp"

Camera* camera = nullptr;
Gate* gate = nullptr;
Lcd* lcd = nullptr;
Ocr* ocr = nullptr;
Sensor* sensor = nullptr;

void sigHandler(int signum) {
  std::cout << "Signal(" << signum << ") 감지됨." << std::endl;
  if (camera != nullptr) delete camera;
  if (gate != nullptr) delete gate;
  if (lcd != nullptr) delete lcd;
  if (ocr != nullptr) delete ocr;
  if (sensor != nullptr) delete sensor;
  std::cout << "Exit";
  exit(0);
}

int main() {
  if (wiringPiSetup() == -1) {
    std::cerr << "wiringPiSetup 에러" << std::endl;
    return -1;
  }

  // 객체들 생성
  std::signal(SIGINT, sigHandler);
  camera = new Camera;
  gate = new Gate;
  lcd = new Lcd;
  ocr = new Ocr;
  sensor = new Sensor;

  camera->openCamera(0);
  ocr->modelInit("../assets/best.onnx");
  while (1) {
    if (sensor->detectObject()) {
      cv::Mat cropped = ocr->cutting(camera->capture());
      if (!cropped.empty()) {
        cv::Mat pre = ocr->preprocessing(cropped);
        std::string plate_number = ocr->parsing(ocr->changeText(pre));
        lcd->print(plate_number);
        gate->open();

        while (sensor->detectObject()) delay(1000);
        delay(1000);
        lcd->clear();
        gate->close();
      }
    } else {
      delay(1000);
    }
  }
  return 0;
}