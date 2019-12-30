~/osu-uwrt/riptide_software/src/riptide_utilities/dates_scripts/date_set.sh $1

rsync -vrzc --delete --exclude=".*" --exclude=".*/" ~/osu-uwrt/riptide_software/src ros@$1:~/osu-uwrt/riptide_software
ssh ros@$1 'chmod 700 ~/osu-uwrt/riptide_software/src/riptide_utilities/*.sh'
ssh ros@$1 'find ~/osu-uwrt/riptide_software/src/ -type f -iname "*.py" -exec chmod +x {} \;'
