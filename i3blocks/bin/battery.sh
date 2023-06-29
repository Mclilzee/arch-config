#!/bin/bash

PERCENT=$(</sys/class/power_supply/BAT1/capacity)
STATUS=$(</sys/class/power_supply/BAT1/status)

if [ "$STATUS" == "Charging" ]; then
	echo -n ""
elif [ "$PERCENT" -gt 85 ]; then
	echo -n "<span color='#00FF00'></span>"
elif [ "$PERCENT" -le 85 ]; then
	echo -n "<span color='#FFFF00'></span>"
elif [ "$PERCENT" -le 50 ]; then
	echo -n "<span color='#FFA500'></span>"
elif [ "$PERCENT" -le 30 ]; then
	echo -n "<span color='#FF0000'></span>"
elif [ "$PERCENT" -le 10 ]; then
	echo -n "<span color='#FF0000'></span>"
fi

echo "$PERCENT%"

# Set urgent flag below 5% or use orange below 20%
[ "${BAT%?}" -le 5 ] && exit 33
[ "${BAT%?}" -le 20 ] && echo "#FF8000"

exit 0
