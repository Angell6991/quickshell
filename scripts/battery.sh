#!/bin/bash

battery=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)


if      [ "$status" = "Full" ]; then
    echo "󱈑 $battery  "


elif    [ "$status" = "Not charging" ]; then
    echo "󰂃 $battery  "


elif    [ "$status" = "Charging" ]; then
    echo "󰂄 $battery  "


elif    [ "$status" = "Discharging" ]; then
    echo "󰂀 $battery  "


fi

