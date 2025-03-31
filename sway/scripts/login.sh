#!/usr/bin/env bash

prep-ghostty() {
    ghostty --gtk-single-instance=true --quit-after-last-window-closed=false --initial-window=false &
}

fix-app-startup() {
    dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY SWAYSOCK
}

run-nm-applet() {
    nm-applet --indicator &
}

set-default-brightness() {
    brightnessctl set 40%
}

main() {
    prep-ghostty
    fix-app-startup
    run-nm-applet
    set-default-brightness
}

main "$@"
