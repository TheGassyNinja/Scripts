#!/usr/bin/env sh


if ! command -v rofi &> /dev/null
   then
       MENU="dmenu"
       else
           MENU="rofi -dmenu"
fi
Main=$HOME/Scripts

options=$(cd ${Main} && /bin/ls -d */)
choice=$(echo -e "${options[@]}" | $MENU -i -p 'CHOOSE: ')

second=$Main/$choice
options=$(cd ${second} && /bin/ls *.sh)
choice=$(echo -e "${options[@]}" | $MENU -i -p 'CHOOSE: ')

$second/$choice
