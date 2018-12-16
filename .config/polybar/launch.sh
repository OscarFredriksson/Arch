#!/bin/bash

echo "killing..."

# Terminate already running bar instances
killall -q polybar

echo "cleaning..."

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

echo "launching polybar..."

# Launch Polybar, using default config location ~/.config/polybar/config
polybar main &

echo "Polybar launched..."