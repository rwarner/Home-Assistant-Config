#!/bin/bash

# Remove all videos and converted videos, ignore errors if no files exist
rm -f /tmp/hass/*.mp4
rm -f /tmp/hass/converted/*
rm -f /config/www/clips/*

exit 0
