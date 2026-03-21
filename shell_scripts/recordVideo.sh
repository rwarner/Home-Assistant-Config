#!/bin/bash

# Create the directory we want to use in case it doesn't exist
mkdir -p /tmp/hass/converted

# For each file in this directory
for i in /tmp/hass/*.mp4
do
    # Get just the filename without path
    filename=$(basename "$i" .mp4)

    # Convert with ffmpeg, cap at 8MB for Discord free-tier limit
    /usr/bin/ffmpeg -y -i "$i" -b:v 1250k -fs 8M /tmp/hass/converted/${filename}.mp4 2>/dev/null
done

exit 0
