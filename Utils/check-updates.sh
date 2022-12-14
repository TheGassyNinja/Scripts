#!/usr/bin/env sh

UPD=$(checkupdates | wc -l)
if $UPD > 10
   then
notify-send -u critical -w "Updates ${UPD}"
fi
