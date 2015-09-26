#/bin/bash

# Disable DPMS / Screen blanking
 xset -dpms
 xset s off
 xset s noblank

mkdir /root/.config
url=$URL
default='http://www.noiseaddicts.com/samples_1w72b820/3712.mp3'
sudo matchbox-window-manager -use_cursor no -use_titlebar no &
xte 'sleep 15' 'key F11'&
epiphany-browser -a --profile /root/.config ${url:-$default} --display=:0
sleep 2s
