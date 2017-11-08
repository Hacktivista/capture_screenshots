#!/bin/bash

COMMAND=${CAPTURE_SCREENSHOTS_COMMAND:-scrot}
FILENAME=${CAPTURE_SCREENSHOTS_FILENAME:-%s.png}

if [ $# -le 0 ] || [ $# -ge 3 ] ; then
    echo "Capture screenshot every EACH_SECONDS seconds in FULL_PATH"
    echo "usage: $0 EACH_SECONDS [FULL_PATH]"
    exit 1
fi

if [ $# -eq 1 ]; then
    FULL_PATH="$HOME/Pictures/screenshots"
else
    FULL_PATH=$2
fi

if [ ! -f $FULL_PATH ]; then
    mkdir -p $FULL_PATH
fi

EACH_SECONDS=$1

while true; do
    $COMMAND "$FULL_PATH/$FILENAME"

    # Inspiration: https://stackoverflow.com/a/25251804
    # TODO: Don't use SECONDS, as is not a POSIX shell variable
    sleep $((EACH_SECONDS-SECONDS%EACH_SECONDS))
done
