#!/bin/bash
#changeBrightnessctl

# Current level of brightness variable
bctllevel="$(brightnessctl info | awk '/%/ {print $4}' | sed 's/(//g; s/)//g; s/%//g')"

# Icons path variable
icons="$HOME/.config/dunst/dunst-icons/"

if [[ "$bctllevel" -ge "50" ]]; then 
	dunstify -a "changeBrightnessctl" -u low -r 9963 -I "$icons"/universal-universal-brightness-512.png -t 1400 "Brightness:" -h int:value:"${bctllevel}"
elif [[ "$bctllevel" -lt "50" ]]; then		
	dunstify -a "changeBrightnessctl" -u critical -r 9963 -I "$icons"/universal-low-brightness-512.png -t 2500 "Brightness" -h int:value:"${bctllevel}"
fi
