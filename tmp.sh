#!/bin/bash

# Get WiFi info using system_profiler
WIFI_INFO=$(system_profiler SPAirPortDataType)

# Extract current network/SSID
SSID=$(echo "$WIFI_INFO" | awk -F': ' '/Current Network/ {getline; getline; print $0}' | xargs)
echo $SSID
