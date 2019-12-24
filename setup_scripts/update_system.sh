#!/bin/bash

./install_ros.sh
./install_rosdeps.sh
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