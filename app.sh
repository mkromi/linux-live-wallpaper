Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
Yaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)

wget https://source.unsplash.com/random/${Xaxis}x${Yaxis} -O /usr/share/wallpapers/deepin/desktop.jpg --no-check-certificate
gsettings set org.gnome.desktop.background picture-uri file:////usr/share/wallpapers/deepin/desktop.jpg