#!/usr/bin/env bash


#touch $HOME/.dbus/Xdbus
#chmod 600 $HOME/.dbus/Xdbus
#env | grep DBUS_SESSION_BUS_ADDRESS > $HOME/.dbus/Xdbus
#echo 'export DBUS_SESSION_BUS_ADDRESS' >> $HOME/.dbus/Xdbus


xset s off -dpms
xrandr --output eDP-1 --off --output HDMI-1 --auto --primary
nitrogen --restore &
picom --config ~/.config/picom.conf --animations --animation-for-open-window fly-in &
dunst &
slstatus &
easyeffects --gapplication-service &
/home/thegassyninja/Scripts/Fun/R2.sh &
/usr/bin/emacs -daemon --with-x-toolkit=lucid &


exit 0
