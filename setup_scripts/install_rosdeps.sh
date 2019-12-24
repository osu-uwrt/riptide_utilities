#!/bin/bash

cd ~/osu-uwrt/riptide_software
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro $ROS_DISTRO -y -r
