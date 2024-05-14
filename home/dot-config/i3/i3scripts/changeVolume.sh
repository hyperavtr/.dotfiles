#!/bin/bash
# changeVolume

# Query pactl for the current volume and whether or not the speaker is muted
#volume="$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')"
#volume="$(wpctl get-volume @DEFAULT_AUDIO_SINK@)"
volume="$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)"
mute="$(pactl get-sink-mute @DEFAULT_SINK@)"

# Icons path variable
icons="$HOME/.config/dunst/dunst-icons/"

if [[ $volume == 0 || "$mute" == "Mute: yes" ]]; then
    # Show the sound muted notification
    dunstify -a "changeVolume-muted" -u critical -I "$icons"/universal-muted-volume-512.png -r 9912 "Volume" "is muted"
elif [[ $volume -gt 100 ]]; then
    # Show the notification if volume above 100%
    dunstify -a "changeVolume" -u critical -I "$icons"/universal-high-volume-512.png -r 9912 -t 1400 -h int:value:"${volume}" "Volume:" 
elif [[ $volume -gt 50 ]]; then
    # Show the notification if volume above 50%
    dunstify -a "changeVolume" -u low -I "$icons"/universal-middle-volume-512.png -r 9912 -t 1400 -h int:value:"${volume}" "Volume:" 
else 
    # Show the notification if volume below 50%
    dunstify -a "changeVolume" -u normal -I "$icons"/universal-low-volume-512.png -r 9912 -t 1400 -h int:value:"${volume}" "Volume:" 
fi
