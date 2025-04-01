#!/usr/bin/env bash
#
# Script for outputting the current battery percentage

BATTERY="/sys/class/power_supply/BAT0"

main() {
    local battery_percentage=$(cat "$BATTERY/capacity")

    local charging=$(cat "$BATTERY/status")
    if [ "$charging" == "Charging" ]; then
        charging_text=" CHARGING"
    fi

    echo "[ BAT: $battery_percentage%$charging_text ]"
}

main
