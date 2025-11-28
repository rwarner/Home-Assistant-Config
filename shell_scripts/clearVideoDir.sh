#!/bin/bash 

# Assuming we're calling after recording any videos

# Remove all videos and converted videos, ignore errors if no files exist
rm -f /tmp/hass/*.mp4
rm -f /tmp/hass/converted/*

exit 0