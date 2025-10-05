#!/usr/bin/env bash
status=""
text=""
if [[ $(dunstctl is-paused) == true ]]; then
    status="paused"
else
    status="unpaused"
fi

if [[ $(dunstctl count history) == 0 ]]; then
    text=""
else
    text=$(dunstctl count history)
fi

echo '{"alt": "'$status'", "text": "'$text'"}'