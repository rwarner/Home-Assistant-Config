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

mkdir -p /tmp/hass/converted /tmp/hass/clips

name=$(basename "$CLIP" .mp4)

# Cap size under Discord's 10MB non-Nitro attachment limit. 8M not 3M: -fs
# stops writing mid-stream the moment the limit is hit, with no error and no
# sign in the output, so a busy scene at 1250k used to get silently cut short.
# A 21s clip lands around 3.1MB, which sat exactly on the old 3M ceiling.
if ! /usr/bin/ffmpeg -y -i "$CLIP" -b:v 1250k -fs 8M "/tmp/hass/converted/${name}.mp4" 2>/dev/null; then
    echo "recordVideo.sh: ffmpeg failed for $CLIP" >&2
    exit 1
fi

# Deliberately NOT /config/www: that path is served at /local/ with no
# authentication at all, so front-door footage was fetchable by anyone who
# could reach Home Assistant and guess the timestamped filename. Discord reads
# this off disk via is_allowed_path, and /tmp/hass is already allowlisted, so
# nothing needs it web-served.
cp "/tmp/hass/converted/${name}.mp4" "/tmp/hass/clips/${name}.mp4"

# Clean up only this run's temp files. Never a blanket rm -- a concurrent
# recording may have a clip in flight.
rm -f "$CLIP" "/tmp/hass/converted/${name}.mp4"

exit 0
