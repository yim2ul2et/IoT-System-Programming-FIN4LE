# Install script for directory: /home/pi/opencv/opencv-4.8.1/data

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/haarcascades" TYPE FILE FILES
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_eye.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_eye_tree_eyeglasses.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_frontalcatface.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_frontalcatface_extended.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_frontalface_alt.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_frontalface_alt2.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_frontalface_alt_tree.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_frontalface_default.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_fullbody.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_lefteye_2splits.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_license_plate_rus_16stages.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_lowerbody.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_profileface.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_righteye_2splits.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_russian_plate_number.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_smile.xml"
    "/home/pi/opencv/opencv-4.8.1/data/haarcascades/haarcascade_upperbody.xml"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/lbpcascades" TYPE FILE FILES
    "/home/pi/opencv/opencv-4.8.1/data/lbpcascades/lbpcascade_frontalcatface.xml"
    "/home/pi/opencv/opencv-4.8.1/data/lbpcascades/lbpcascade_frontalface.xml"
    "/home/pi/opencv/opencv-4.8.1/data/lbpcascades/lbpcascade_frontalface_improved.xml"
    "/home/pi/opencv/opencv-4.8.1/data/lbpcascades/lbpcascade_profileface.xml"
    "/home/pi/opencv/opencv-4.8.1/data/lbpcascades/lbpcascade_silverware.xml"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/pi/opencv/opencv-4.8.1/build/data/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
