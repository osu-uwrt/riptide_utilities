~/osu-uwrt/riptide_software/src/riptide_utilities/xfer-baycat.sh
ssh ros@baycat 'cd ~/osu-uwrt/riptide_software && source /opt/ros/kinetic/setup.bash && catkin_make && source ~/osu-uwrt/riptide_software/devel/setup.bash'
ssh ros@baycat 'chmod 700 ~/osu-uwrt/riptide_software/src/riptide_utilities/*'
