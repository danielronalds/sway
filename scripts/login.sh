#!/usr/bin/env bash

prep-ghostty() {
    ghostty --gtk-single-instance=true --quit-after-last-window-closed=false --initial-window=false &
}

fix-app-startup() {
    dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY SWAYSOCK
}

main() {
    prep-ghostty
    fix-app-startup
}

main "$@"
