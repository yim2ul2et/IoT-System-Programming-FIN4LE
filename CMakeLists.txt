cmake_minimum_required(VERSION 3.10)
project(MyProject VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 1. 시스템에서 OpenCV 라이브러리 찾기 (필수 요소로 설정)
find_package(OpenCV REQUIRED)

# 바이너리 출력 위치를 프로젝트 루트의 bin 폴더로 지정
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin)

# 실행 파일 타겟 및 소스 지정
add_executable(my_program
    src/main.cpp
    src/orc.cpp
)

# 2. 내 프로젝트 헤더(include) 및 OpenCV 헤더 경로 적용
target_include_directories(my_program PRIVATE 
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${OpenCV_INCLUDE_DIRS}
)

# 3. OpenCV 라이브러리 파일들을 실행 파일에 링크
target_link_libraries(my_program PRIVATE ${OpenCV_LIBS})
