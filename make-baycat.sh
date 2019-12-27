~/osu-uwrt/riptide_software/src/riptide_utilities/xfer-baycat.sh
ssh ros@baycat 'bash -ic "cd ~/osu-uwrt/riptide_software && catkin build"'
ssh ros@baycat 'chmod 700 ~/osu-uwrt/riptide_software/src/riptide_utilities/*'
