#!/bin/bash

# Setup ~/.bashrc file
sh setup_bashrc.sh
source /opt/ros/$ROS_DISTRO/setup.bash

# Add user to group 'uwrt' for sensor permissions
sudo ~/osu-uwrt/riptide_software/src/puddles_hardware/scripts/add_rule

# Compile Code
cd ~/osu-uwrt/riptide_software
catkin build

echo "If no errors occurred during compilation, then everything was setup correctly"
echo "Please reboot your computer for final changes to take effect"