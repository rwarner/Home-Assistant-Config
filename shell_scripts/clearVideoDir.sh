#!/bin/bash

# Remove raw/converted temp files only — www/clips is managed by clear_old_clips
rm -f /tmp/hass/*.mp4
rm -f /tmp/hass/converted/*

exit 0
