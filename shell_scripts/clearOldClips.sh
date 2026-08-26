#!/bin/bash

# Delete clips older than 24 hours. Lives under /tmp/hass rather than
# /config/www so the footage is never served at /local/ unauthenticated.
find /tmp/hass/clips -name "*.mp4" -mmin +1440 -delete 2>/dev/null

exit 0
