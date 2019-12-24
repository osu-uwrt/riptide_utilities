#!/bin/bash

if [ -z "$ROS_DISTRO" ] && type lsb_release >/dev/null 2>&1; then
    VER=$(lsb_release -sr)
    if [ $VER == "18.04" ]; then
        ROS_DISTRO="melodic"
    elif [ $VER == "16.04" ]; then
        ROS_DISTRO="kinetic"
    else
        echo "Linux version not recognized"
        exit
    fi
    export ROS_DISTRO
else
    echo "Linux distro not recognized"
    exit
fi

./install_ros.sh
source /opt/ros/$ROS_DISTRO/setup.bash
./install_rosdeps.sh
source /opt/ros/$ROS_DISTRO/setup.bash
if [ $ROS_DISTRO == "melodic" ]; then
    printf "\n\nPlease ensure flycaptue is installed from this repo: https://github.com/Juched/flycap-mirror\n\n\n"
    read -p "Press enter to continue"
else
    ./install_point_grey_drivers.sh
fi
./install_custom_ros_packages.sh
sudo ./install_ceres.sh
sudo ./install_eigen.sh
./setup_uwrt_env.sh
