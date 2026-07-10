#!/bin/bash
#
# For starting sxhkd
sxhkd -c ~/.config/bspwm/sxhkdrc &
~/.config/polybar/launch.sh &
mpd --no-daemon &
feh --bg-fill ~/pictures/Wallpapers/fav_img.png
picom &
