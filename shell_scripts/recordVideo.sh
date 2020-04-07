#!/bin/bash 

# Create the directory we want to use in case it doesn't exist
mkdir -p /tmp/hass/converted

# For each file in this directory
for i in /tmp/hass/*.mp4
do 
    # Convert it with ffmpeg for under the size limit of Discord's requirements
    # Usually around ~5mb or so converted with the 1250k birate
    /usr/bin/ffmpeg -i "$i" -b:v 1250k /tmp/hass/converted/recording.mp4
done

# This for some reason is REQUIRED exiting, if you don't want some dumb fucking error from HASS
# even though the command above works fine
exit 0
