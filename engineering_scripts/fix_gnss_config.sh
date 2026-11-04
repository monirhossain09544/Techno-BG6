#!/system/bin/sh
# 1. Stop GNSS services FIRST so their shutdown handler does not overwrite config.xml!
stop vendor.gnss_service_sprd
stop gpsd
sleep 1

# 2. Write optimized GreenEye2 GNSS Hardware Config (/data/vendor/gnss/config/config.xml)
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

# 3. Start GNSS services now that config.xml is written on disk
start gpsd
start vendor.gnss_service_sprd
sleep 2

echo "=== CHECK /data/vendor/gnss/config/config.xml AFTER START ==="
grep -E 'REALEPH-ENABLE|SLEEP-ENABLE|SUPL-PATH|FLOAT-CN0|FL_VDR_MODE|WHITE-LIST-ENABLE|RTK-SWITCH' /data/vendor/gnss/config/config.xml
