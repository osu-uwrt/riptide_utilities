#!/bin/bash

if type lsb_release >/dev/null 2>&1; then
    VER=$(lsb_release -sr)
    if [ $VER == "18.04" ]; then
        ROS_DISTRO="melodic"
    elif [ $VER == "16.04" ]; then
        ROS_DISTRO="kinetic"
    else
        echo "Linux version not recognized"
        exit
    fi
    echo "Installing ros $ROS_DISTRO..."
    wget https://raw.githubusercontent.com/PickNikRobotics/quick-ros-install/master/ros_install.sh && chmod 755 ros_install.sh && ./ros_install.sh $ROS_DISTRO
    exit
fi  
echo "Linux distro not recognized"

