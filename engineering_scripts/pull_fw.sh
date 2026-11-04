#!/system/bin/sh
cp /vendor/firmware/hdl_firmware_02.img /data/local/tmp/
cp /vendor/firmware/chipone_ts_fw_01.bin /data/local/tmp/
chmod 644 /data/local/tmp/hdl_firmware_02.img /data/local/tmp/chipone_ts_fw_01.bin
ls -la /vendor/lib/modules/*touch* /vendor/lib/modules/*ts* /vendor/lib/modules/*tp*
find /vendor /system /system_ext /product /odm /mnt/vendor -iname "*chipone*" -o -iname "*9916*" -o -iname "*tp*fw*" 2>/dev/null
