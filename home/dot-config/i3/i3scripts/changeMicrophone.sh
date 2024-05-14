#!/bin/bash
#changeMicrophone

# Whether or not the microphone is muted
micmute="$(pactl get-source-mute @DEFAULT_SOURCE@)"

if [[ $micmute == "Mute: yes" ]]; then
	# Show the microphone muted notification
	dunstify -a "changeMicrophone" -u critical -I $HOME/.config/dunst/dunst-icons/universal-muted-microphone-512.png -r 9911 -t 5000 "Microphone" "is muted"
else
	#Show the microphone unmuted notification
	dunstify -a "changeMicrophone" -u normal -I $HOME/.config/dunst/dunst-icons/universal-unmuted-microphone-512.png -r 9911 -t 1150 "Microphone" "is unmuted"
fi
