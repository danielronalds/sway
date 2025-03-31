#!/usr/bin/env bash
#
# Script for outputting the current volume

main() {
    local volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')

    echo "[ VOL: $volume ]"
}

main
