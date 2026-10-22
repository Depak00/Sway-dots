#!/usr/bin/env bash
set -eu

sel=$(slurp -f "%x %y %w %h" -b 281e1e33 -s 1e1e1e -c 484848) || exit 0
[[ -n $sel ]] || exit 0
read -r X Y W H <<< "$sel"
swaymsg -t subscribe -m '["window"]' \
  | jq --unbuffered -r '
      select(.change == "new")
      | select(.container.app_id == "slterm")
      | .container.id
    ' \
  | head -n1 \
  | while read -r id; do
        swaymsg "[con_id=$id]" resize set "$W" px "$H" px
        swaymsg "[con_id=$id]" move position "$X" px "$Y" px
    done &

# sleep 0.1
exec kitty -1 --class slterm
