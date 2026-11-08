#!/bin/bash
CHOICE=$(echo -e "󰐥 Shutdown\n󰜉 Reboot\n󰍃 Exit" | fuzzel -d --hide-prompt -a top-right -l 3 -w 11 --font='roboto:size=13' --x-margin 10 --y-margin 10)
killall fuzzel
case $CHOICE in
    "󰍃 Exit") swaymsg exit ;;
    "󰐥 Shutdown") shutdown now ;;
    "󰜉 Reboot") reboot ;;
esac
