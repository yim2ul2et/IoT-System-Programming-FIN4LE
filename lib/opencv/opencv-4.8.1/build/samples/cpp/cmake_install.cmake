# Install script for directory: /home/pi/opencv/opencv-4.8.1/samples/cpp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4/samples/cpp" TYPE FILE FILES
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/3calibration.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/CMakeLists.txt"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/application_trace.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/aruco_dict_utils.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/asift.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/audio_spectrogram.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/barcode.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/bgfg_segm.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/calibration.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/camshiftdemo.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/cloning_demo.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/cloning_gui.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/connected_components.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/contours2.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/convexhull.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/cout_mat.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/create_mask.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/dbt_face_detection.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/delaunay2.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/demhist.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/detect_blob.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/detect_mser.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/dft.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/digits_lenet.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/digits_svm.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/dis_opticalflow.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/distrans.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/drawing.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/edge.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/ela.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/em.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/epipolar_lines.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/essential_mat_reconstr.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/facedetect.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/facial_features.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/falsecolor.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/fback.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/ffilldemo.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/filestorage.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/fitellipse.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/flann_search_dataset.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/grabcut.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/image_alignment.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/imagelist_creator.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/imagelist_reader.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/imgcodecs_jpeg.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/inpaint.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/intelligent_scissors.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/intersectExample.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/kalman.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/kmeans.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/laplace.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/letter_recog.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/lkdemo.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/logistic_regression.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/lsd_lines.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/mask_tmpl.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/matchmethod_orb_akaze_brisk.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/minarea.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/morphology2.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/neural_network.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/npr_demo.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/opencv_version.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/pca.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/peopledetect.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/phase_corr.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/points_classifier.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/polar_transforms.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/qrcode.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/segment_objects.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/select3dobj.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/simd_basic.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/smiledetect.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/squares.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/stereo_calib.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/stereo_match.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/stitching.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/stitching_detailed.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/text_skewness_correction.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/train_HOG.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/train_svmsgd.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/travelsalesman.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/tree_engine.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_audio.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_audio_combination.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_basic.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_camera.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_gphoto2_autofocus.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_gstreamer_pipeline.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_image_sequence.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_microphone.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_obsensor.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_openni.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_realsense.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videocapture_starter.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/videowriter_basic.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/warpPerspective_demo.cpp"
    "/home/pi/opencv/opencv-4.8.1/samples/cpp/watershed.cpp"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/pi/opencv/opencv-4.8.1/build/samples/cpp/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
