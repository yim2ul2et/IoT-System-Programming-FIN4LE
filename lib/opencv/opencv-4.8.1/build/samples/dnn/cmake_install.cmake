# Install script for directory: /home/pi/opencv/opencv-4.8.1/samples/dnn

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/dnn" TYPE FILE FILES
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/CMakeLists.txt"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/classification.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/colorization.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/common.hpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/custom_layers.hpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/dasiamrpn_tracker.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/face_detect.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/human_parsing.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/nanotrack_tracker.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/object_detection.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/openpose.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/person_reid.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/scene_text_detection.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/scene_text_recognition.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/scene_text_spotting.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/segmentation.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/speech_recognition.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/dnn/text_detection.cpp"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/pi/opencv/opencv-4.8.1/build/samples/dnn/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
