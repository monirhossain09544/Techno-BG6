echo "--- settings ---"
for ns in system secure global; do settings list $ns | grep -i -E 'charg.*(light|led|flash)|(light|led|flash).*charg|front_flash|breath|incoming_flash'; done
echo "--- flash nodes ---"
ls -d /sys/class/misc/*flash* /sys/class/flash* /sys/devices/virtual/misc/*flash* /sys/class/leds/*flash* /sys/class/leds/*torch* 2>/dev/null
find /sys/devices -maxdepth 6 -iname '*flash*' 2>/dev/null | grep -v -i -E 'ufs|mmc|spi|nand' | head -20
echo "--- packages ---"
pm list packages | grep -i -E 'flash|light|breath|charg'
echo "--- flashcontrol ---"
dumpsys package com.sprd.flashcontrol | grep -E 'Activity|Service|Receiver|versionName' | head -20
