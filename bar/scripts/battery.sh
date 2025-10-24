#!/bin/bash

battery=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)


if      [ "$status" = "Full" ]; then
    echo "󰻹  󰻹  󰻹  󰻹  󰻹 "


elif    [ "$status" = "Not charging" ]; then
    echo "         "


elif    [ "$status" = "Charging" ]; then

    if [ "$battery" -le 10 ]; then
        echo "󰛞         "
    elif [ "$battery" -le 20 ]; then
        echo "         "
    elif [ "$battery" -le 30 ]; then
        echo "  󰛞       "
    elif [ "$battery" -le 40 ]; then
        echo "         "
    elif [ "$battery" -le 50 ]; then
        echo "    󰛞     "
    elif [ "$battery" -le 60 ]; then
        echo "         "
    elif [ "$battery" -le 70 ]; then
        echo "      󰛞   "
    elif [ "$battery" -le 80 ]; then
        echo "         "
    elif [ "$battery" -le 90 ]; then
        echo "        󰛞 "
    elif [ "$battery" -le 100 ]; then
        echo "         "
    fi

elif    [ "$status" = "Discharging" ]; then
    
    if [ "$battery" -le 10 ]; then
        echo "󰛞         "
    elif [ "$battery" -le 20 ]; then
        echo "󰋑         "
    elif [ "$battery" -le 30 ]; then
        echo "󰋑  󰛞       "
    elif [ "$battery" -le 40 ]; then
        echo "󰋑  󰋑       "
    elif [ "$battery" -le 50 ]; then
        echo "󰋑  󰋑  󰛞     "
    elif [ "$battery" -le 60 ]; then
        echo "󰋑  󰋑  󰋑     "
    elif [ "$battery" -le 70 ]; then
        echo "󰋑  󰋑  󰋑  󰛞   "
    elif [ "$battery" -le 80 ]; then
        echo "󰋑  󰋑  󰋑  󰋑   "
    elif [ "$battery" -le 90 ]; then
        echo "󰋑  󰋑  󰋑  󰋑  󰛞 "
    elif    [ $battery  -le 100  ];   then
        echo "󰋑  󰋑  󰋑  󰋑  󰋑 "
    fi


fi


