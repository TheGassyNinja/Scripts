#!/usr/bin/env bash
killall -q nitrogen

if ! command -v rofi &> /dev/null
   then
       MENU="dmenu"
       else
           MENU="rofi -dmenu"
    fi

DIR="$HOME/py-walpapers"
options=$(cd ${DIR} && /bin/ls | cut -d "." -f 1)
choice=$(echo -e "${options[@]}" | $MENU -i -p 'Wallpapers: ')
wal -q -i  ${DIR}/${choice}.*

exit 1
