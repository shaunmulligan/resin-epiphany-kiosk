#/bin/bash

# Disable DPMS / Screen blanking
 xset -dpms
 xset s off
 xset s noblank

mkdir /root/.config

sudo matchbox-window-manager -use_cursor no -use_titlebar no &
epiphany-browser -a --profile /root/.config https://html5test.com/ --display=:0
sleep 2s
