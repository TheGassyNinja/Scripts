#/bin/bash
picom --config ~/.config/picom.conf
nitrogen --restore
killall polybar
polybar
xset s off -dpms
