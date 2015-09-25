#/bin/bash

# Disable DPMS / Screen blanking
 xset -dpms
 xset s off
 xset s noblank

mkdir ~/.config

while true; do
 sudo matchbox-window-manager -use_cursor no -use_titlebar no &
 sudo -u pi epiphany-browser -a --profile ~/.config http://resin.io
 sleep 2s
done;
