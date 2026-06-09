# Install script for directory: /home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_rgbd.so.4.8.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_rgbd.so.408"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/home/pi/opencv/opencv-4.8.1/build/lib/libopencv_rgbd.so.4.8.1"
    "/home/pi/opencv/opencv-4.8.1/build/lib/libopencv_rgbd.so.408"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_rgbd.so.4.8.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_rgbd.so.408"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/opencv/opencv-4.8.1/build/lib/libopencv_rgbd.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd/colored_kinfu.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd/depth.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd/detail" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd/detail/pose_graph.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd/dynafu.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd/intrinsics.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd/kinfu.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd/large_kinfu.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd/linemod.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/rgbd" TYPE FILE OPTIONAL FILES "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/include/opencv2/rgbd/volume.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/rgbd" TYPE FILE FILES
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/samples/colored_kinfu_demo.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/samples/dynafu_demo.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/samples/io_utils.hpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/samples/kinfu_demo.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/samples/kinfu_demo.py"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/samples/large_kinfu_demo.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/samples/linemod.cpp"
    "/home/pi/opencv/opencv_contrib-4.8.1/modules/rgbd/samples/odometry_evaluation.cpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/rgbd" TYPE DIRECTORY FILES "")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/pi/opencv/opencv-4.8.1/build/modules/rgbd/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
