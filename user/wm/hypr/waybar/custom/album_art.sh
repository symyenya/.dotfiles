#!/usr/bin/env bash
album_art=$(playerctl -p spotify metadata mpris:artUrl)
if [[ -z $album_art ]] 
then
   # spotify is dead, we should die too.
   exit
fi
curl -s  "${album_art}" --output "/home/nya/.dotfiles/user/wm/hypr/waybar/custom/output/cover.jpeg"
echo "/home/nya/.dotfiles/user/wm/hypr/waybar/custom/output/cover.jpeg"
