#!/bin/bash
cd ~/Scripts/.Sounds/R2-Sounds
CLIP=` shuf -n1 -e * `

mpg123 -q "$CLIP" 

