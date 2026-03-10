#!/bin/sh

#toggle mic and mic light
swayosd-client --input-volume mute-toggle
state=$(pactl get-source-mute @DEFAULT_SOURCE@)
if [ "$state" = "Mute: no" ]; then
	light -s sysfs/leds/platform::micmute -S 0.00

else
	light -s sysfs/leds/platform::micmute -S 100.00   
fi
