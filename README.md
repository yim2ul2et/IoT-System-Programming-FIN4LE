## 26년 1학기 IoT 시스템 프로그래밍 기말 프로젝트

#### 제작자
- 국립부경대학교 컴퓨터인공지능공학부 23학번 임승호

#### 주제 및 내용
- opencv 영상처리를 활용한 주차 차단기
- 초음파 센서를 통해 1차 인식 이후 카메라 촬영 및 dnn 모듈을 통해 번호판을 인식하여 2차 인식
- 2차 인식 이후 사진을 전처리하여 tesseract 모델이 번호판 글자 인식
- 인식된 글자는 LCD를 통해 출력, RGB LED와 serve 모터 작동(게이트 오픈)
- 초음파 센서가 out of range가 나올 때 까지 게이트 오픈 상태를 유지하는 방식 

#### 외부 사용 라이브러리
- tessaract 5.5.0
- leptonica 1.84.1
- opencv 4.14.0
- wiringPi(gpio) 3.18

#### 사용한 장비 및 모듈
- 라즈베리파이 4
- HC-SRO4 초음파 센서
- 삼성 SC-FD110B 카메라
- RGB LED
- SG90 micro serve 모터
- 1602A LCD

#### 학습 방법
- yolov5s 모델을 사용하여 번호판 인식 학습
- [roboflow 차량번호판 데이터 셋](https://universe.roboflow.com/school-b6rj0/-dpo7a/browse?queryText=&pageSize=50&startingIndex=0&browseQuery=true) 사용

#### 소개 자료
- [발표 자료](https://github.com/yim2ul2et/IoT-System-Programming-FIN4LE/blob/main/Project%20PPT.pdf)
- [유튜브 시연 영상](https://youtu.be/IVkf7KbGlIg)

#### 사용 방법
- 외부 라이브러리를 설치한 후 ./build에서 cmake로 빌드
