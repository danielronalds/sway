#!/usr/bin/env bash

update_brightness() {
    local current_brightness=$(brightnessctl g)
    local max_brightness=$(brightnessctl m)
    local brightness_percentage=$(( current_brightness * 100 / max_brightness ))

    BRIGHTNESS="$brightness_percentage%"
}

update_time() {
    TIME=$(date +'%Y-%m-%d %H:%M')
}

update_volume() {
    VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
}

update_battery() {
    local battery_text=$(acpi | awk '{print $4}' | sed 's/%,//')

    local charging= $(acpi | awk '{print $3}' | sed "s/,//")

    # FIXME: Not working
    if [ "$charging" == "Charging" ]; then
        battery_text="$battery_text+"
    fi

    BATTERY="$battery_text%"
}

print_bar() {
    update_time
    update_brightness
    update_volume
    update_battery

    echo -n "[ BAT: $BATTERY ] [ VOL: $VOLUME ] [ BRT: $BRIGHTNESS ] [ $TIME ] "
}

main() {
    while true; do
        print_bar
        sleep 5
    done
}

main
