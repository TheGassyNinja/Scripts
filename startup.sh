#/bin/bash
picom --config ~/.config/picom.conf
sleep 3 
nitrogen --restore
killall polybar
polybar
xset s off -dpms
