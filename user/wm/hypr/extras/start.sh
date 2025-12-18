#!/usr/bin/env bash
playerctld daemon &
awww-daemon &
awww img ~/Wallpapers/space.jpg &

nm-applet --indicator &

waybar &

dunst &

easyeffects -w --service-mode &
