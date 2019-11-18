#!/bin/bash

# Update ~/.bashrc File

s1="source /opt/ros/kinetic/setup.bash"
s2="source ~/osu-uwrt/riptide_software/devel/setup.bash"


# Add appropriate lines to the bashrc if they do not exist
if ! grep -q "$s1" ~/.bashrc; then
    echo $s1 >> ~/.bashrc
fi

if ! grep -q "$s2" ~/.bashrc; then
    echo $s2 >> ~/.bashrc
fi