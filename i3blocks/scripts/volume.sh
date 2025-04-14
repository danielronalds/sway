#!/usr/bin/env bash
#
# Script for the volume block

main() {
    # If left button is clicked, then BLOCK_BUTTON will be set to 1
    if [[ $BLOCK_BUTTON == 1 ]]; then
        pavucontrol &> /dev/null &
    fi

    local volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')

    echo "[ VOL: $volume ]"
}

main "$@"
