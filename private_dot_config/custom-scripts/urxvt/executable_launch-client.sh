#!/bin/sh
# Short script that starts a urxvt client if a daemon is running.
# If a daemon is not running, start one, then start a client.

urxvtc "$@"
res=$?

if [ "$res" = "2" ]; then
  urxvtd -q -o -f
  urxvtc "$@"
fi
