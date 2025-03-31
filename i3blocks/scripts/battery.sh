#!/usr/bin/env bash
#
# Script for outputting the current battery percentage

main() {
    local battery_text=$(acpi | awk '{print $4}' | sed 's/%,//')

    # Covering edge case of laptop charged fully
    if [ "$battery_text" == "charging," ]; then
        battery_text=100
    fi

    # FIXME: Not working
    local charging= $(acpi | awk '{print $3}' | sed "s/,//")
    if [ "$charging" == "Charging" ]; then
        battery_text="$battery_text+"
    fi

    echo "[ BAT: $battery_text% ]"
}

main
