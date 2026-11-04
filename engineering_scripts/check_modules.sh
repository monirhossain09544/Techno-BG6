#!/system/bin/sh
ls -la /vendor/lib/modules/ /system/lib/modules/ /odm/lib/modules/ 2>/dev/null | grep -iE "gesture|adaptive|chipone|ts|tp"
cp /vendor/lib/modules/*gesture* /vendor/lib/modules/*adaptive* /vendor/lib/modules/*chipone* /data/local/tmp/ 2>/dev/null
chmod 0666 /data/local/tmp/*.ko 2>/dev/null
ls -la /data/local/tmp/*.ko 2>/dev/null
