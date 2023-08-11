#!/bin/bash

output=$(headsetcontrol --battery)
battery_percentage=$(echo "$output" | grep -oE '[0-9]+')

if [[ -n "$battery_percentage" ]]; then
    output="{\"text\": \"$battery_percentage% Battery\", \"tooltip\": \"Headset Battery Status\", \"class\": \"custom-headset-battery\"}"
else
    output="{\"text\": \"N/A\", \"tooltip\": \"Headset Battery Status\", \"class\": \"custom-headset-battery-error\"}"
fi

echo "$output"
