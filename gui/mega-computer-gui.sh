
ssh uwrt@mega-computer 'bash -i ~/osu-uwrt/riptide_software/src/riptide_utilities/roscore.sh' &

export ROS_IPV6=on
export ROS_MASTER_URI=http://mega-computer:11311
rqt
