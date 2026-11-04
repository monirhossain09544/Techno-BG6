#!/system/bin/sh
CR=$(printf '\r')

send_gnss() {
    service call vendor.sprd.hardware.log.ILogControl/default 1 s16 "GNSS_LCS_SERVER" s16 "${1}${CR}
" >/dev/null
}

echo "=== 1. SEND OFFICIAL UNISOC GNSS HARDWARE COMMANDS (WITH CRLF) ==="
# Turn OFF GNSS debug log ($PSPRD,00,a,1) so it doesn't waste disk/CPU
send_gnss '$PSPRD,00,a,1'
# Turn ON SpreadOrbit ($PSPRD,00,4,1)
send_gnss '$PSPRD,00,4,1'
# Turn ON Real-EPH ($PSPRD,00,a,2)
send_gnss '$PSPRD,00,a,2'
# Turn ON GNSS RTK ($PSPRD,00,a,6)
send_gnss '$PSPRD,00,a,6'
# Turn ON GNSS RTD ($PSPRD,00,a,8)
send_gnss '$PSPRD,00,a,8'
# Set Multi-Constellation GPS + B1C + GLONASS + Galileo 0x1d ($PSPRD,00,3,29)
send_gnss '$PSPRD,00,3,29'

# Update config.xml properties via official GNSS_LCS_SERVER writer (preserves in-memory + FlashCfg.cg + config.xml!)
send_gnss '$SGPS,write,config.xml,single,REALEPH-ENABLE:TRUE'
send_gnss '$SGPS,write,config.xml,single,SLEEP-ENABLE:FALSE'
send_gnss '$SGPS,write,config.xml,single,FLOAT-CN0:TRUE'
send_gnss '$SGPS,write,config.xml,single,FL_WORK_MODE:0x1'
send_gnss '$SGPS,write,config.xml,single,FL_VDR_MODE:1'
send_gnss '$SGPS,write,config.xml,single,WHITE-LIST-ENABLE:TRUE'
send_gnss '$SGPS,write,config.xml,single,GE2-SUPPORT-GALILEO:TRUE'
send_gnss '$SGPS,write,config.xml,single,SPREADORBIT-ENABLE:TRUE'
send_gnss '$SGPS,write,config.xml,single,SUPL-PATH:/data/vendor/gnss/supl/supl.xml'

echo "=== 2. BIND-MOUNT /vendor/etc/supl.xml (RO) SO CHINESE supl.qxwz.com IS COMPLETELY GONE ==="
mount -o remount,rw /data/adb/modules 2>/dev/null
cp -af /data/vendor/gnss/supl/supl.xml /data/adb/modules/bg6_hios_pro/files/supl.xml
chown root:root /data/adb/modules/bg6_hios_pro/files/supl.xml
chmod 0644 /data/adb/modules/bg6_hios_pro/files/supl.xml
chcon u:object_r:vendor_configs_file:s0 /data/adb/modules/bg6_hios_pro/files/supl.xml 2>/dev/null
umount /vendor/etc/supl.xml 2>/dev/null
mount -o bind /data/adb/modules/bg6_hios_pro/files/supl.xml /vendor/etc/supl.xml
mount -o remount,ro,bind /vendor/etc/supl.xml 2>/dev/null

echo "=== 3. ENABLE HIDDEN SETTINGS & 4 GNSS DIAGNOSTIC ACTIVITIES ==="
pm enable 'com.android.settings/com.android.settings.Settings$TranLocationImproveAccSettingsActivity' 2>/dev/null
pm enable 'com.spreadtrum.sgps/com.spreadtrum.sgps.SgpsActivity' 2>/dev/null
pm enable 'com.sprd.engineermode/com.unisoc.gnsstool.GNSSDesenseActivity' 2>/dev/null
pm enable 'com.sprd.engineermode/com.unisoc.gnsstool.ClockQualityActivity' 2>/dev/null
pm enable 'com.sprd.engineermode/com.unisoc.gnsstool.NoiseScanActivity' 2>/dev/null

echo "=== 4. VERIFY config.xml AND /vendor/etc/supl.xml ==="
cat /data/vendor/gnss/config/config.xml
grep -E 'SERVER-ADDRESS|CELL-ID-GSM-MCC|GEO-LAT|GEO-LON' /vendor/etc/supl.xml
