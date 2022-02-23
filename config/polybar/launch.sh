#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
polybar top &
polybar bottom &
# feh --bg-scale /home/luca/Pictures/Wallpapers/evening-sky.png &

echo "Bar launched..."

# remember: chmod u+x ./launch.sh