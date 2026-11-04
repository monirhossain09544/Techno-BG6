#!/system/bin/sh
# Backup original GNSS config files if not backed up yet
[ ! -f /data/vendor/gnss/config/config.xml.bak ] && cp -af /data/vendor/gnss/config/config.xml /data/vendor/gnss/config/config.xml.bak
[ ! -f /data/vendor/gnss/supl/supl.xml.bak ] && cp -af /data/vendor/gnss/supl/supl.xml /data/vendor/gnss/supl/supl.xml.bak

# 1. Write optimized GreenEye2 GNSS Hardware Config (/data/vendor/gnss/config/config.xml)
cat << 'EOF' > /data/vendor/gnss/config/config.xml
<?xml version="1.0" encoding="utf-8"?>
<GNSS>
    <PROPERTY NAME="CHIP-MODULE" VALUE="GREENEYE2"/>
    <PROPERTY NAME="GPS-IMG-MODE" VALUE="GNSSBDMODEM"/>
    <PROPERTY NAME="GE2-VERSION" VALUE="GNSS_L6BL_W23.37.4 FL_22B_W23.34.5"/>
    <PROPERTY NAME="SPREADORBIT-ENABLE" VALUE="TRUE"/>
    <PROPERTY NAME="CP-MODE" VALUE="0x1d"/>
    <PROPERTY NAME="CHIP-ID" VALUE="SP12"/>
    <PROPERTY NAME="OUTPUT-PROTOCOL" VALUE="0011"/>
    <PROPERTY NAME="LOG-ENABLE" VALUE="FALSE"/>
    <PROPERTY NAME="UART-NAME" VALUE="/dev/ttyS0"/>
    <PROPERTY NAME="UART-SPEED" VALUE="3000000"/>
    <PROPERTY NAME="STTY-NAME" VALUE="/dev/sttygnss0"/>
    <PROPERTY NAME="DEBUG-ENABLE" VALUE="TRUE"/>
    <PROPERTY NAME="POST-ENABLE" VALUE="FALSE"/>
    <PROPERTY NAME="APWDG-ENABLE" VALUE="TRUE"/>
    <PROPERTY NAME="REALEPH-ENABLE" VALUE="TRUE"/>
    <PROPERTY NAME="SLEEP-ENABLE" VALUE="FALSE"/>
    <PROPERTY NAME="SLEEP-TIMER" VALUE="300"/>
    <PROPERTY NAME="CMCC-ENABLE" VALUE="TRUE"/>
    <PROPERTY NAME="TSX-ENABLE" VALUE="FALSE"/>
    <PROPERTY NAME="RF-TOOL" VALUE="FALSE"/>
    <PROPERTY NAME="SUPL-PATH" VALUE="/data/vendor/gnss/supl/supl.xml"/>
    <PROPERTY NAME="FLOAT-CN0" VALUE="TRUE"/>
    <PROPERTY NAME="BASEBAND-MODE" VALUE="FALSE"/>
    <PROPERTY NAME="MEASURE-REPORT" VALUE="TRUE"/>
    <PROPERTY NAME="MINIPVT" VALUE="FALSE"/>
    <PROPERTY NAME="FL_WORK_MODE" VALUE="0x1"/>
    <PROPERTY NAME="FL_VDR_MODE" VALUE="1"/>
    <PROPERTY NAME="WHITE-LIST-ENABLE" VALUE="TRUE"/>
    <PROPERTY NAME="CPLOGTOAP-ENABLE" VALUE="FALSE"/>
    <PROPERTY NAME="RfPathLossDb_Ap" VALUE="0"/>
    <PROPERTY NAME="RfPathLossDb_Cp" VALUE="0"/>
    <PROPERTY NAME="IDLEON-DELAY" VALUE="0"/>
    <PROPERTY NAME="WIFIONLY-ENABLE" VALUE="FALSE"/>
    <PROPERTY NAME="GE2-SUPPORT-GALILEO" VALUE="TRUE"/>
    <PROPERTY NAME="RTD-SWITCH" VALUE="TRUE"/>
    <PROPERTY NAME="RTK-SWITCH" VALUE="TRUE"/>
    <PROPERTY NAME="RESET-STATE" VALUE="FALSE"/>
</GNSS>
EOF
chown system:system /data/vendor/gnss/config/config.xml
chmod 0666 /data/vendor/gnss/config/config.xml

# 2. Write Bangladesh / Google SUPL 2.0 Config (/data/vendor/gnss/supl/supl.xml)
cat << 'EOF' > /data/vendor/gnss/supl/supl.xml
<?xml version="1.0" encoding="utf-8"?>
<SPRDGNSS>
    <COMM>
      <PROTOCOL NAME="RX_SUPL_PROTOCOL" TYPE="SUPL" INTERFACE="DUMMY2">
          <PROPERTY NAME="ENABLE" VALUE="TRUE"/>
          <PROPERTY NAME="SERVER-ADDRESS" VALUE="supl.google.com"/>
          <PROPERTY NAME="SERVER-PORT" VALUE="7275"/>
          <PROPERTY NAME="HLP-ENABLE" VALUE="FALSE"/>
          <PROPERTY NAME="HLP-ADDRESS" VALUE=""/>
          <PROPERTY NAME="HLP-PORT" VALUE=""/>
          <PROPERTY NAME="SUPL-MODE" VALUE="msb"/>
          <PROPERTY NAME="VERSION" VALUE="SUPL_15.5.2"/>
          <PROPERTY NAME="SUPL-VERSION" VALUE="v2.0.0"/>
          <PROPERTY NAME="AGPS-VERSION" VALUE="W23.30.3_V3.7.38"/>
          <PROPERTY NAME="LOG-ENABLE" VALUE="FALSE"/>
          <PROPERTY NAME="RESET-ENABLE" VALUE="FALSE"/>
          <PROPERTY NAME="UDP-ENABLE" VALUE="FALSE"/>
          <PROPERTY NAME="CONTROL-PLANE" VALUE="FALSE"/>
          <PROPERTY NAME="MIN-PERFORMANCE" VALUE="FALSE"/>
          <PROPERTY NAME="MPM" VALUE="LOCATION"/>
          <PROPERTY NAME="ExtAddr Enable" VALUE="FALSE"/>
          <PROPERTY NAME="EXTERNAL-ADDRESS" VALUE="123456"/>
          <PROPERTY NAME="MlcNum Enable" VALUE="FALSE"/>
          <PROPERTY NAME="MLC-NUMBER" VALUE="123456"/>
          <PROPERTY NAME="CP-AUTORESET" VALUE="TRUE"/>
          <PROPERTY NAME="CER-VERIFY" VALUE="FALSE"/>
          <PROPERTY NAME="SUPL-CER" VALUE="/data/vendor/gnss/supl/spirentroot.cer"/>
          <PROPERTY NAME="CELL-ID-GSM-MCC" VALUE="470"/>
          <PROPERTY NAME="CELL-ID-GSM-MNC" VALUE="1"/>
          <PROPERTY NAME="CELL-ID-GSM-LAC" VALUE="1001"/>
          <PROPERTY NAME="CELL-ID-GSM-CI" VALUE="1001"/>
          <PROPERTY NAME="TLS-ENABLE" VALUE="TRUE"/>
          <PROPERTY NAME="SETID" VALUE="IMSI"/>
          <PROPERTY NAME="ACCURACY-UNIT" VALUE="METER"/>
          <PROPERTY NAME="HORIZON-ACCURACY" VALUE="10"/>
          <PROPERTY NAME="VERTICAL-ACCURACY" VALUE="5"/>
          <PROPERTY NAME="LOC-AGE" VALUE="0"/>
          <PROPERTY NAME="DELAY" VALUE="0"/>
          <PROPERTY NAME="LAB-IOT" VALUE="FALSE"/>
          <PROPERTY NAME="ECID-ENABLE" VALUE="TRUE"/>
          <PROPERTY NAME="LOCAL-MSISDN" VALUE="0"/>
          <PROPERTY NAME="3RD-MSISDN" VALUE="0"/>
          <PROPERTY NAME="TRIGGER-START" VALUE="FALSE"/>
          <PROPERTY NAME="TRIGGER-TYPE" VALUE="AREA"/>
          <PROPERTY NAME="PERIODIC-MIN-INTERVAL" VALUE="60"/>
          <PROPERTY NAME="PERIODIC-START-TIME" VALUE="30"/>
          <PROPERTY NAME="PERIODIC-STOP-TIME" VALUE="240"/>
          <PROPERTY NAME="PERIODIC-POSMETHOD" VALUE="BASE"/>
          <PROPERTY NAME="AREA-POSMETHOD" VALUE="BASE"/>
          <PROPERTY NAME="AREA-TYPE" VALUE="INSIDE"/>
          <PROPERTY NAME="GEOGRAPHIC" VALUE="CIRCULAR"/>
          <PROPERTY NAME="GEORADIUS" VALUE="1000"/>
          <PROPERTY NAME="GEO-LAT" VALUE="23.7960"/>
          <PROPERTY NAME="GEO-LON" VALUE="90.3767"/>
          <PROPERTY NAME="GEO-TRIGGER" VALUE="FALSE"/>
          <PROPERTY NAME="SIGN" VALUE="NORTH"/>
          <PROPERTY NAME="AREA-MIN-INTERVAL" VALUE="60"/>
          <PROPERTY NAME="MAX-NUM" VALUE="5"/>
          <PROPERTY NAME="AREA-START-TIME" VALUE="30"/>
          <PROPERTY NAME="AREA-STOP-TIME" VALUE="240"/>
          <PROPERTY NAME="NI-ENABLE" VALUE="TRUE"/>
          <PROPERTY NAME="EM-NOTIFY" VALUE="FALSE"/>
          <PROPERTY NAME="ROAMING-ENABLE" VALUE="TRUE"/>
          <PROPERTY NAME="SUPLLOG-SAVE" VALUE="FALSE"/>
          <PROPERTY NAME="NOTIFY-TIMEOUT" VALUE="8"/>
          <PROPERTY NAME="VERIFY-TIMEOUT" VALUE="8"/>
          <PROPERTY NAME="NI-TEST" VALUE="NOTIFIONLY"/>
          <PROPERTY NAME="HASH-ALGO" VALUE="AUTO"/>
          <PROPERTY NAME="REAL-TIME" VALUE="TRUE"/>
          <PROPERTY NAME="QUASIREAL-TIME" VALUE="TRUE"/>
          <PROPERTY NAME="BATCH" VALUE="TRUE"/>
          <PROPERTY NAME="MAXNUM-POS" VALUE="60"/>
          <PROPERTY NAME="MAXNUM-MSR" VALUE="60"/>
          <PROPERTY NAME="PERIODIC-MININT" VALUE="10"/>
          <PROPERTY NAME="PERIODIC-MAXINT" VALUE="60"/>
          <PROPERTY NAME="ENABLE-FW-SUPLCFG" VALUE="TRUE"/>
          <PROPERTY NAME="LPP_PROFILE" VALUE="7"/>
          <PROPERTY NAME="CP_AGPS_ENABLE_PROFILE" VALUE="1"/>
          <PROPERTY NAME="USE_NI_SLP_ADDRESS" VALUE="TRUE"/>
          <PROPERTY NAME="SUPL_USE_APN" VALUE="FALSE"/>
          <PROPERTY NAME="ALLOW_SUPL_IGNORE_NFW_LOCATION_POLICY" VALUE="FALSE"/>
          <PROPERTY NAME="ALLOW_CP_IGNORE_NFW_LOCATION_POLICY" VALUE="FALSE"/>
          <PROPERTY NAME="SUPL_VER_SKT_NI" VALUE="FALSE"/>
          <PROPERTY NAME="SUPL_USE_APN_NI" VALUE="FALSE"/>
      </PROTOCOL>
    </COMM>
</SPRDGNSS>
EOF
chown system:system /data/vendor/gnss/supl/supl.xml
chmod 0660 /data/vendor/gnss/supl/supl.xml

# 3. Unlock Hidden Location Features & Disable Background GPS Power-Controller Throttling
/data/adb/ksu/bin/resetprop -n persist.sys.pwctl.gps 0
/data/adb/ksu/bin/resetprop -n persist.sys.pwctl.gps.onlysave 1
/data/adb/ksu/bin/resetprop -n persist.sys.gps.lpp 3
/data/adb/ksu/bin/resetprop -n ro.tran_here_nlp_support 1

setprop persist.sys.pwctl.gps 0
setprop persist.sys.pwctl.gps.onlysave 1
setprop persist.sys.gps.lpp 3

settings put secure location_mode 3
settings put secure cloud_here_enable 1
settings put secure com.here.consent.COLLECT_RADIO_SIGNALS 1
settings put global assisted_gps_enabled 1
settings put global wifi_scan_always_enabled 1
settings put global ble_scan_always_enabled 1
settings put global wifi_scan_throttle_enabled 0

# 4. Restart GNSS HAL daemon so it immediately reloads config.xml & supl.xml
stop vendor.gnss_service_sprd
stop gpsd
sleep 1
start gpsd
start vendor.gnss_service_sprd
sleep 2

echo "=== VERIFY GNSS SERVICE & PROPS ==="
getprop init.svc.vendor.gnss_service_sprd
getprop init.svc.gpsd
getprop persist.sys.pwctl.gps
getprop persist.sys.gps.lpp
getprop ro.tran_here_nlp_support
settings get secure cloud_here_enable
settings get secure com.here.consent.COLLECT_RADIO_SIGNALS
settings get global ble_scan_always_enabled
