#!/usr/bin/env bash

prep-ghostty {
    ghostty --gtk-single-instance=true --quit-after-last-window-closed=false --initial-window=false &
}

main() {
    prep-ghostty
}

main "$@"
