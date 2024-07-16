#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on each monitor
for m in $(polybar -m | cut -d ':' -f 1); do
    MONITOR=$m polybar --reload example &
done

echo "Polybar launched on each monitor."
