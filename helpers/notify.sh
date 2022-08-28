#!/bin/sh

function notify {
    curl --silent --show-error \
        --form-string "token=$PUSHOVER_TOKEN" \
        --form-string "user=$PUSHOVER_USER" \
        --form-string "message=$1" \
        https://api.pushover.net/1/messages.json
}
