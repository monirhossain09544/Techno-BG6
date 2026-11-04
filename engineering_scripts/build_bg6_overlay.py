import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

MANIFEST_XML = '''<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="android.overlay.tecno.bg6"
    android:versionCode="1"
    android:versionName="1.0">
    <uses-sdk android:minSdkVersion="36" android:targetSdkVersion="36" />
    <application android:hasCode="false" />
    <overlay
        android:targetPackage="android"
        android:isStatic="true"
        android:priority="850" />
</manifest>
'''

DIMENS_XML = '''<?xml version="1.0" encoding="utf-8"?>
<resources>
    <item type="dimen" name="config_screenBrightnessSettingDefaultFloat">0.096576735</item>
    <item type="dimen" name="config_screenBrightnessSettingMaximumFloat">1.0</item>
    <item type="dimen" name="config_screenBrightnessSettingMinimumFloat">7.4E-4</item>
    <dimen name="quick_qs_offset_height">40.0dip</dimen>
    <dimen name="quick_qs_total_height">164.0dip</dimen>
    <dimen name="status_bar_height_landscape">28.0dip</dimen>
    <dimen name="status_bar_height_portrait">40.0dip</dimen>
</resources>
'''

INTEGERS_XML = '''<?xml version="1.0" encoding="utf-8"?>
<resources>
    <integer name="config_autoBrightnessBrighteningLightDebounce">1500</integer>
    <integer name="config_autoBrightnessDarkeningLightDebounce">3000</integer>
    <integer name="config_brightness_ramp_rate_fast">600</integer>
    <integer name="config_customizedMaxCachedProcesses">32</integer>
    <integer name="config_defaultPeakRefreshRate">60</integer>
    <integer name="config_defaultRefreshRate">60</integer>
    <integer name="config_screenBrightnessSettingMinimum">1</integer>
    <integer name="config_shutdownBatteryTemperature">600</integer>
</resources>
'''

BOOLS_XML = '''<?xml version="1.0" encoding="utf-8"?>
<resources>
    <bool name="config_automatic_brightness_available">true</bool>
    <bool name="config_carrier_volte_available">true</bool>
    <bool name="config_carrier_volte_provisioned">true</bool>
    <bool name="config_carrier_vt_available">true</bool>
    <bool name="config_device_volte_available">true</bool>
    <bool name="config_device_vt_available">true</bool>
    <bool name="config_device_wfc_ims_available">true</bool>
    <bool name="config_enableAutoPowerModes">true</bool>
    <bool name="config_enableWifiDisplay">true</bool>
    <bool name="config_fillMainBuiltInDisplayCutout">false</bool>
    <bool name="config_setColorTransformAccelerated">true</bool>
    <bool name="config_showNavigationBar">true</bool>
    <bool name="config_suspendWhenScreenOffDueToProximity">true</bool>
    <bool name="config_swipe_up_gesture_setting_available">true</bool>
    <bool name="config_useDevInputEventForAudioJack">true</bool>
    <bool name="config_zramWriteback">true</bool>
    <bool name="skip_restoring_network_selection">true</bool>
</resources>
'''

STRINGS_XML = '''<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="config_dozeComponent">com.android.systemui/com.android.systemui.doze.DozeService</string>
    <string name="config_mainBuiltInDisplayCutout">M -24,0 L -24,40 L 24,40 L 24,0 Z @dp</string>
    <string name="config_qualified_networks_service_package">com.spreadtrum.ims</string>
    <string name="config_wlan_data_service_package">com.spreadtrum.ims</string>
    <string name="config_wlan_network_service_package">com.spreadtrum.ims</string>
</resources>
'''

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd_setup = """
rm -rf /nvme0n1-disk/infinity_x/bg6_overlay_src
mkdir -p /nvme0n1-disk/infinity_x/bg6_overlay_src/res/values
mkdir -p /nvme0n1-disk/infinity_x/bg6_overlay_src/res/xml
cp /nvme0n1-disk/bg6_device/rro_decoded/res/xml/power_profile.xml /nvme0n1-disk/infinity_x/bg6_overlay_src/res/xml/power_profile.xml
cp /nvme0n1-disk/bg6_device/rro_decoded/res/values/arrays.xml /nvme0n1-disk/infinity_x/bg6_overlay_src/res/values/arrays.xml
"""
stdin, stdout, stderr = client.exec_command(cmd_setup)
stdout.read()

sftp = client.open_sftp()
with sftp.open("/nvme0n1-disk/infinity_x/bg6_overlay_src/AndroidManifest.xml", "w") as f:
    f.write(MANIFEST_XML)
with sftp.open("/nvme0n1-disk/infinity_x/bg6_overlay_src/res/values/dimens.xml", "w") as f:
    f.write(DIMENS_XML)
with sftp.open("/nvme0n1-disk/infinity_x/bg6_overlay_src/res/values/integers.xml", "w") as f:
    f.write(INTEGERS_XML)
with sftp.open("/nvme0n1-disk/infinity_x/bg6_overlay_src/res/values/bools.xml", "w") as f:
    f.write(BOOLS_XML)
with sftp.open("/nvme0n1-disk/infinity_x/bg6_overlay_src/res/values/strings.xml", "w") as f:
    f.write(STRINGS_XML)
sftp.close()

cmd_build = """
set -e
AAPT2="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/aapt2"
ZIPALIGN="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/zipalign"
SIGNAPK="/nvme0n1-disk/shunno_os/out/host/linux-x86/framework/signapk.jar"
LIB64="/nvme0n1-disk/shunno_os/out/host/linux-x86/lib64"
KEY_PEM="/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem"
KEY_PK8="/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8"
FW_RES="/nvme0n1-disk/infinity_x/framework-res.apk"
SRC="/nvme0n1-disk/infinity_x/bg6_overlay_src"

rm -rf $SRC/compiled $SRC/unsigned.apk $SRC/aligned.apk /nvme0n1-disk/infinity_x/treble-overlay-tecno-bg6.apk
mkdir -p $SRC/compiled

$AAPT2 compile --dir $SRC/res -o $SRC/compiled/res.zip
$AAPT2 link -o $SRC/unsigned.apk \
    -I $FW_RES \
    --manifest $SRC/AndroidManifest.xml \
    $SRC/compiled/res.zip

$ZIPALIGN -f 4 $SRC/unsigned.apk $SRC/aligned.apk
java -Djava.library.path=$LIB64 -jar $SIGNAPK $KEY_PEM $KEY_PK8 $SRC/aligned.apk /nvme0n1-disk/infinity_x/treble-overlay-tecno-bg6.apk

ls -lh /nvme0n1-disk/infinity_x/treble-overlay-tecno-bg6.apk
$AAPT2 dump badging /nvme0n1-disk/infinity_x/treble-overlay-tecno-bg6.apk
"""
stdin, stdout, stderr = client.exec_command(cmd_build)
print(stdout.read().decode("utf-8", errors="ignore"))
err = stderr.read().decode("utf-8", errors="ignore")
if err:
    print("STDERR:", err)
client.close()
