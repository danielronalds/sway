#!/usr/bin/env bash
#
# Script for outputting the current brightness

main() {
    local current_brightness=$(brightnessctl g)
    local max_brightness=$(brightnessctl m)
    local brightness_percentage=$(( current_brightness * 100 / max_brightness ))

    echo "[ BRT: $brightness_percentage% ]"
}

main
