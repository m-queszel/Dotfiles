#!/bin/bash

# Get current volume state
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')
muted=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

# Choose icon based on volume level and mute state
if [ "$muted" = "yes" ]; then
    icon="󰖁"  # Muted
elif [ "$volume" -eq 0 ]; then
    icon="󰕿"  # Volume 0%
elif [ "$volume" -lt 50 ]; then
    icon="󰖀"  # Volume low
else
    icon="󰕾"  # Volume high
fi

echo "$icon $volume%"
