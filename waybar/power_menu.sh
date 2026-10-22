#!/bin/bash
CHOICE=$(echo -e "󰐥 Shutdown\n󰜉 Reboot\n󰍃 Exit" | fuzzel -d --hide-prompt -a top-right -l 3 -w 10 --font='iosevka:size=7' --x-margin 5 --y-margin 5)
killall fuzzel
case $CHOICE in
    "󰍃 Exit") swaymsg exit ;;
    "󰐥 Shutdown") shutdown now ;;
    "󰜉 Reboot") reboot ;;
esac
