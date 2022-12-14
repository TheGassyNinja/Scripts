#!/usr/bin/env sh


if ! command -v rofi &> /dev/null
   then
       MENU="dmenu"
       else
           MENU="rofi -dmenu"
    fi
CMD="easyeffects --load-preset"

declare -A selections
selections[NoFx]=No-Effect
selections[Loud]=Loudness
selections[Compressed]=Compressed-Loudness
selections[Bass]=Bass-Boost-1


choice=$(printf '%s\n' "${!selections[@]}" | $MENU -i -p 'Config Audio: ')

if [ "$choice" ]; then
        CFG=$(printf '%s\n' "${selections["${choice}"]}")
	$($CMD $CFG)
    else
        exit 0
fi
