#!/usr/bin/env sh

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
#polybar top &
polybar bottom &
polybar center &
polybar topright &


echo "Bar launched..."

# remember: chmod u+x ./launch.sh
