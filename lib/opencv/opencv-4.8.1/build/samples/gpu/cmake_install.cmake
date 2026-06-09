# Install script for directory: /home/pi/opencv/opencv-4.8.1/samples/gpu

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/gpu" TYPE FILE FILES
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/CMakeLists.txt"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/alpha_comp.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/bgfg_segm.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/cascadeclassifier.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/farneback_optical_flow.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/generalized_hough.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/hog.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/houghlines.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/morphology.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/multi.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/pyrlk_optical_flow.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/stereo_match.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/stereo_multi.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/super_resolution.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/surf_keypoint_matcher.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/video_reader.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/gpu/video_writer.cpp"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/pi/opencv/opencv-4.8.1/build/samples/gpu/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
