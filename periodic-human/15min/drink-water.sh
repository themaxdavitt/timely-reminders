#!/bin/sh

. /srv/notify.sh

minutes="$(date +%M)"

if [ "$minutes" = "00" ]; then
    notify "Drink water and stand up!"
else
    notify "Drink water!"
fi
