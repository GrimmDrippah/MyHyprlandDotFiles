#!/bin/bash
while :
do
    LAYOUT=$(hyprctl devices -j | jq -r '.keyboards.[] | select(.main == true).active_keymap' | awk '{print $1}')
    if [[ "$LAYOUT" == "English" ]]; then echo "EN"; elif [[ "$LAYOUT" == "Persian" ]]; then echo "FA"; fi
done
