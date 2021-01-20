#!/bin/bash

export DISPLAY=:0

Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
Yaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)

tags=$(jq -r '.tags' $PWD/linux-live-wallpaper/data.json)

IFS=', ' read -r -a array <<< "$tags"
size=${#array[@]}
index=$(($RANDOM % $size))

wget https://source.unsplash.com/${Xaxis}x${Yaxis}?${array[$index]} -O /tmp/wallpaper.png --no-check-certificate
gsettings set org.gnome.desktop.background picture-uri file:////tmp/wallpaper.png
