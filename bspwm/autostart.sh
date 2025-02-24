#!/bin/sh

sxhkd  &
xwallpaper --zoom ~/Pictures/Wallpapers/009.jpg &
picom -b &
setxkbmap -option caps:super &
xset r rate 350 50 &
polybar -c ~/.config/polybar/config.ini &
