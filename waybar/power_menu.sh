#!/bin/bash
pkill wofi
CHOICE=$(echo -e "Exit Sway\nShutdown\nReboot" | wofi --dmenu --lines 3 --width 80 --hide-search --location top_right --yoffset 5)
case $CHOICE in
    "Exit Sway") swaymsg exit ;;
    "Shutdown") shutdown now ;;
    "Reboot") reboot ;;
esac
