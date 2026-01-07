#!/usr/bin/env bash

options="Logout\nSuspend\nReboot\nShutdown"
chosen=$(echo -e "$options" | dmenu -i -l 4 -fn 'Poppins:size=12' -nb '#141c21' -nf '#93a1a1' -sb '#289c93' -sf '#141c21' -p "Power Menu:")

case "$chosen" in
    "Logout") i3-msg exit ;;
    "Suspend") loginctl suspend ;;
    "Reboot") loginctl reboot ;;
    "Shutdown") loginctl poweroff ;;
esac
