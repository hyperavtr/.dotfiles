#!/bin/bash
# Copyright (C) 2014 Alexander Keller <github@nycroth.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#------------------------------------------------------------------------
if [[ -z "$INTERFACE" ]] ; then
    INTERFACE="${BLOCK_INSTANCE:-wlp3s0}"
fi
#------------------------------------------------------------------------

COLOR_GE80=${COLOR_GE80:-#50fa7b}
COLOR_GE60=${COLOR_GE60:-#8be9fd}
COLOR_GE40=${COLOR_GE40:-#f1fa8c}
COLOR_LOWR=${COLOR_LOWR:-#FF5555}
COLOR_DOWN=${COLOR_DOWN:-#FF5555}

# As per #36 -- It is transparent: e.g. if the machine has no battery or wireless
# connection (think desktop), the corresponding block should not be displayed.
[[ ! -d /sys/class/net/${INTERFACE}/wireless ]] && exit

# If the wifi interface exists but no connection is active, "down" shall be displayed.
if [[ "$(cat /sys/class/net/$INTERFACE/operstate)" = 'down' ]]; then
    echo "down" 
    echo "down"
    echo $COLOR_DOWN
    exit
fi

#------------------------------------------------------------------------

QUALITY=$(iw dev ${INTERFACE} link | grep 'dBm$' | grep -Eoe '-[0-9]{2}' | awk '{print  ($1 > -50 ? 100 :($1 < -100 ? 0 : ($1+100)*2))}')
ESSID=$(iw dev wlp3s0 link | grep SSID | awk -F ': ' '{print $2}')

#------------------------------------------------------------------------

echo ' '$QUALITY% '' $ESSID # full text
echo ' '$QUALITY% '' $ESSID # short text

# color
if [[ $QUALITY -ge 80 ]]; then
    echo $COLOR_GE80
elif [[ $QUALITY -ge 60 ]]; then
    echo $COLOR_GE60
elif [[ $QUALITY -ge 40 ]]; then
    echo $COLOR_GE40
else
    echo $COLOR_LOWR
fi
