#!/bin/bash
#
# Convert one motion clip for Discord.
#
# Takes the exact clip path as $1. The previous version looped over every
# *.mp4 in /tmp/hass, which meant a second motion event landing mid-write got
# converted half-finished -- and the caller had no way to know which file it
# had just processed.
#
set -uo pipefail

CLIP="${1:-}"

if [ -z "$CLIP" ]; then
    echo "recordVideo.sh: no clip path given" >&2
    exit 1
fi

if [ ! -f "$CLIP" ]; then
    echo "recordVideo.sh: no such clip: $CLIP" >&2
    exit 1
fi

mkdir -p /tmp/hass/converted /config/www/clips

name=$(basename "$CLIP" .mp4)

# Cap size well under Discord's 10MB non-Nitro attachment limit
if ! /usr/bin/ffmpeg -y -i "$CLIP" -b:v 1250k -fs 3M "/tmp/hass/converted/${name}.mp4" 2>/dev/null; then
    echo "recordVideo.sh: ffmpeg failed for $CLIP" >&2
    exit 1
fi

# www/clips is what the Discord notification attaches from
cp "/tmp/hass/converted/${name}.mp4" "/config/www/clips/${name}.mp4"

# Clean up only this run's temp files. Never a blanket rm -- a concurrent
# recording may have a clip in flight.
rm -f "$CLIP" "/tmp/hass/converted/${name}.mp4"

exit 0
