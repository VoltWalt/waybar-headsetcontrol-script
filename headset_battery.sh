#!/bin/bash

output=$(headsetcontrol --battery)
battery_percentage=$(echo "$output" | grep -oE '[0-9]+')

if [[ -n "$battery_percentage" ]]; then
    if (( battery_percentage >= 80 )); then
        icon=""  # Full Battery icon (Font Awesome icon)
    elif (( battery_percentage >= 60 )); then
        icon=""  # 3/4 Battery icon (Font Awesome icon)
    elif (( battery_percentage >= 40 )); then
        icon=""  # 1/2 Battery icon (Font Awesome icon)
    elif (( battery_percentage >= 20 )); then
        icon=""  # 1/4 Battery icon (Font Awesome icon)
    else
        icon=""  # Empty Battery icon (Font Awesome icon)
    fi

    echo "$icon $battery_percentage%"
else
    echo "N/A"
fi
