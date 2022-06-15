#!/bin/bash
cd ~/Scripts/Sounds/R2-Sounds
CLIP=` shuf -n1 -e * `

play -q -v 2 "$CLIP" -t alsa

