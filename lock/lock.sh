#!/bin/bash

# Verificamos si hypridle está corriendo

if pgrep -x "hypridle" > /dev/null; then
    notify-send "󱚳  System security:" "automatic screen lock disabled"
    qs -p ~/.config/quickshell/lock/shell.qml &
    pkill -x hypridle

else
    notify-send "󱎚  System security:" "automatic screen lock activated"
    qs kill --path ~/.config/quickshell/lock/shell.qml &
    hypridle &

    # hyprctl reload &

fi
