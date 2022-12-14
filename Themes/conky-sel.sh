#!/usr/bin/env bash

if ! command -v rofi &> /dev/null
   then
       MENU="dmenu"
       else
           MENU="rofi -dmenu"
    fi

DIR="$HOME/.config/conky"
options=$(cd ${DIR} && /bin/ls)
choice=$(echo -e "${options[@]}" | $MENU -i -p 'Conky-Sel: ')
$DIR/$choice/start.sh

exit 1
