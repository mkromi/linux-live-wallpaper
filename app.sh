Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
Yaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)

wget https://source.unsplash.com/random/${Xaxis}x${Yaxis} -O /tmp/wallpaper.png --no-check-certificate
gsettings set org.gnome.desktop.background picture-uri file:////tmp/wallpaper.png