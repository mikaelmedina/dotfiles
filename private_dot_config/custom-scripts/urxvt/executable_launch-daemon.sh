#!/bin/sh
# Short script to launch urxvt daemon if it is not running.

ps -A | grep -iw urxvtd > /dev/null
res=$?

if [ "$res" -eq "1" ]; then
  urxvtd -q -o -f
fi


