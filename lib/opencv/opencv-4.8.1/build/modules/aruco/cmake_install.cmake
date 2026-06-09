# Install script for directory: /home/pi/opencv/opencv_contrib-4.8.1/modules/aruco

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
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_aruco.so.4.8.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_aruco.so.408"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/home/pi/opencv/opencv-4.8.1/build/lib/libopencv_aruco.so.4.8.1"
    "/home/pi/opencv/opencv-4.8.1/build/lib/libopencv_aruco.so.408"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_aruco.so.4.8.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_aruco.so.408"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/pi/opencv/opencv-4.8.1/build/lib:"
           NEW_RPATH "/usr/local/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/opencv/opencv-4.8.1/build/lib/libopencv_aruco.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/include/opencv2/aruco.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/aruco" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/include/opencv2/aruco/aruco_calib.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/aruco" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/include/opencv2/aruco/charuco.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/aruco" TYPE FILE FILES
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/aruco_samples_utility.hpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/calibrate_camera.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/calibrate_camera_charuco.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/create_board.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/create_board_charuco.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/create_diamond.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/create_marker.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/detect_board.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/detect_board_charuco.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/detect_diamonds.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/detect_markers.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/detector_params.yml"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/tutorial_camera_charuco.yml"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/tutorial_camera_params.yml"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/tutorial_charuco_create_detect.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/aruco/samples/tutorial_dict.yml"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/aruco" TYPE DIRECTORY FILES "")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/pi/opencv/opencv-4.8.1/build/modules/aruco/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
