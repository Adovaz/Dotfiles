#!/bin/sh

#toggle mic and mic light

pactl set-source-mute \@DEFAULT_SOURCE@ toggle
level=$(light -s sysfs/leds/platform::micmute -G)
echo $level
if [ "$level" = "0.00" ]; then
	light -s sysfs/leds/platform::micmute -S 100.00   
else
	light -s sysfs/leds/platform::micmute -S 0.00
fi
