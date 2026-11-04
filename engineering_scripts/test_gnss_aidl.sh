#!/system/bin/sh
echo "=== 1. TEST ILogControl GNSS_LCS_SERVER READ ==="
service call vendor.sprd.hardware.log.ILogControl/default 1 s16 "GNSS_LCS_SERVER" s16 '$SGPS,read,config.xml,all
'

echo "=== 2. SEND RTK ON ($PSPRD,00,a,6), RTD ON ($PSPRD,00,a,8), REALEPH ON ($PSPRD,00,a,0), SPREADORBIT ON ($PSPRD,00,a,2), MULTI-GNSS 0x1d ($PSPRD,00,3,29) ==="
for cmd in '$PSPRD,00,a,0' '$PSPRD,00,a,2' '$PSPRD,00,a,6' '$PSPRD,00,a,8' '$PSPRD,00,3,29' \
           '$SGPS,write,config.xml,single,REALEPH-ENABLE:TRUE' \
           '$SGPS,write,config.xml,single,SLEEP-ENABLE:FALSE' \
           '$SGPS,write,config.xml,single,FLOAT-CN0:TRUE' \
           '$SGPS,write,config.xml,single,FL_WORK_MODE:0x1' \
           '$SGPS,write,config.xml,single,FL_VDR_MODE:1' \
           '$SGPS,write,config.xml,single,WHITE-LIST-ENABLE:TRUE' \
           '$SGPS,write,config.xml,single,SUPL-PATH:/data/vendor/gnss/supl/supl.xml'; do
    echo "Sending: $cmd"
    service call vendor.sprd.hardware.log.ILogControl/default 1 s16 "GNSS_LCS_SERVER" s16 "$cmd
"
done

echo "=== 3. READ BACK CONFIG FROM GNSS_LCS_SERVER ==="
service call vendor.sprd.hardware.log.ILogControl/default 1 s16 "GNSS_LCS_SERVER" s16 '$SGPS,read,config.xml,all
'
cat /data/vendor/gnss/config/config.xml
