#!/bin/bash
export DISPLAY=:0

Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
Yaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)

splitXaxis=(${Xaxis// / })
splitYaxis=(${Yaxis// / })

tags=$(jq -r '.tags' $PWD/linux-live-wallpaper/data.json)

IFS=', ' read -r -a array <<< "$tags"
size=${#array[@]}
index=$(($RANDOM % $size))

wget -q --spider https://source.unsplash.com

if [ $? -eq 0 ]; then
    wget https://source.unsplash.com/${splitXaxis[0]}x${splitYaxis[0]}?${array[$index]} -O /tmp/wallpaper.png --no-check-certificate
    gsettings set org.gnome.desktop.background picture-uri file:////tmp/wallpaper.png
fi