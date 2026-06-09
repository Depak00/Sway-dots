#!/bin/bash
pkill wofi 2>/dev/null
WORKSPACES=$(swaymsg -t get_workspaces | jq -r '.[].name')
[ -z "$WORKSPACES" ] && exit
LINES=$(echo "$WORKSPACES" | wc -l)
CHOICE=$(echo "$WORKSPACES" | wofi --dmenu --lines "$LINES" --width 1 --hide-search --location top_left --yoffset 5)
swaymsg workspace "$CHOICE"
