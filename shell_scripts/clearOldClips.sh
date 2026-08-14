#!/bin/bash

# Delete clips from www/clips older than 24 hours
find /config/www/clips -name "*.mp4" -mmin +1440 -delete

exit 0
