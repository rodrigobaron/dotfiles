#!/bin/bash

SSID=$(system_profiler SPAirPortDataType | sed -n '/Current Network/,/PHY Mode/p' | grep -v "Current Network\|PHY Mode" | xargs | cut -d: -f1)

if [ -z "$SSID" ]; then
  sketchybar --set $NAME icon="󰖪" label="Off"
else
  sketchybar --set $NAME icon="󰖩" label="$SSID"
fi
