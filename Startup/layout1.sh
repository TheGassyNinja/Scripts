#!/usr/bin/env sh

alacritty & 
sleep 1
bspc node -p south
bspc node -o 0.85 
alacritty -e cava -p ~/.config/cava/right-config & 
sleep 1.5 
bspc node -p west
bspc node -o 0.75
alacritty -e cava -p ~/.config/cava/left-config & 

sleep 1
bspc node -o 0.34
alacritty -e cava &
sleep 1
bspc node -f north
alacritty &
