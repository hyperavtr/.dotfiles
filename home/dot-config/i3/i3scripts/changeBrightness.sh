#!/bin/bash
#changeBrightness

# Current level of brightness variable
blevel="$(xbacklight -get)"
iblevel=${blevel%.*}

# Icons path variable
icons="$HOME/.config/dunst/dunst-icons/"

if [[ "$iblevel" -gt "65" ]]; then 
	dunstify -a "changeBrightness" -u low -r 9963 -I "$icons"/universal-universal-brightness-512.png -t 1400 "Brightness:" -h int:value:"${iblevel}"
elif [[ "$iblevel" -gt "35" ]]; then		
	dunstify -a "changeBrightness" -u low -r 9963 -I "$icons"/universal-universal-brightness-512.png -t 1400 "Brightness:" -h int:value:"${iblevel}"
else
    dunstify -a "changeBrightness" -u critical -r 9963 -I "$icons"/universal-low-brightness-512.png -t 2500 "Brightness" -h int:value:"${iblevel}"
fi
