# Install script for directory: /home/lilly/Desktop/irisbot_ROS/src/irisbot

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lilly/Desktop/irisbot_ROS/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irisbot/msg" TYPE FILE FILES
    "/home/lilly/Desktop/irisbot_ROS/src/irisbot/msg/Pose.msg"
    "/home/lilly/Desktop/irisbot_ROS/src/irisbot/msg/RotateCmd.msg"
    "/home/lilly/Desktop/irisbot_ROS/src/irisbot/msg/DriveCmd.msg"
    "/home/lilly/Desktop/irisbot_ROS/src/irisbot/msg/Node.msg"
    "/home/lilly/Desktop/irisbot_ROS/src/irisbot/msg/NodeLoc.msg"
    "/home/lilly/Desktop/irisbot_ROS/src/irisbot/msg/NodeMsg.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irisbot/srv" TYPE FILE FILES "/home/lilly/Desktop/irisbot_ROS/src/irisbot/srv/GetAnchor.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irisbot/cmake" TYPE FILE FILES "/home/lilly/Desktop/irisbot_ROS/build/irisbot/catkin_generated/installspace/irisbot-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lilly/Desktop/irisbot_ROS/devel/include/irisbot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lilly/Desktop/irisbot_ROS/devel/share/roseus/ros/irisbot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lilly/Desktop/irisbot_ROS/devel/share/common-lisp/ros/irisbot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lilly/Desktop/irisbot_ROS/devel/share/gennodejs/ros/irisbot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/home/lilly/anaconda3/bin/python" -m compileall "/home/lilly/Desktop/irisbot_ROS/devel/lib/python3/dist-packages/irisbot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/lilly/Desktop/irisbot_ROS/devel/lib/python3/dist-packages/irisbot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lilly/Desktop/irisbot_ROS/build/irisbot/catkin_generated/installspace/irisbot.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irisbot/cmake" TYPE FILE FILES "/home/lilly/Desktop/irisbot_ROS/build/irisbot/catkin_generated/installspace/irisbot-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irisbot/cmake" TYPE FILE FILES
    "/home/lilly/Desktop/irisbot_ROS/build/irisbot/catkin_generated/installspace/irisbotConfig.cmake"
    "/home/lilly/Desktop/irisbot_ROS/build/irisbot/catkin_generated/installspace/irisbotConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/irisbot" TYPE FILE FILES "/home/lilly/Desktop/irisbot_ROS/src/irisbot/package.xml")
endif()

