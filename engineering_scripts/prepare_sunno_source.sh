#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os

# 1. Cleanly checkout the 23 hardware-bridged Android 14 repos
REPOS="system/core frameworks/native system/vold external/selinux bootable/recovery frameworks/av frameworks/base system/extras frameworks/opt/telephony system/netd system/nfc packages/apps/Settings packages/modules/Bluetooth system/bpf bionic system/linkerconfig hardware/interfaces build/make packages/modules/Connectivity frameworks/opt/net/ims packages/modules/vndk system/sepolicy packages/modules/DeviceLock packages/modules/Wifi packages/services/Telephony system/apex packages/modules/DnsResolver"

for p in $REPOS; do
    rm -rf "$p" ".repo/projects/$p.git"
done

su - administrator -c "
    cd /nvme0n1-disk/shunno_os
    /usr/local/bin/repo sync -c -j8 --force-sync $REPOS
"

# 2. Create native TECNO-BG6 Hardware Overlays in vendor/hardware_overlay/Tecno/BG6 & BG6-SystemUI
mkdir -p vendor/hardware_overlay/Tecno/BG6/res/values vendor/hardware_overlay/Tecno/BG6/res/xml
cp -f /nvme0n1-disk/bg6_device/rro_decoded/res/xml/power_profile.xml vendor/hardware_overlay/Tecno/BG6/res/xml/power_profile.xml

cat > vendor/hardware_overlay/Tecno/BG6/AndroidManifest.xml << 'EOF'
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="me.phh.treble.overlay.tecno.bg6"
        android:versionCode="1"
        android:versionName="1.0">
        <overlay android:targetPackage="android"
                android:requiredSystemPropertyName="ro.vendor.build.fingerprint"
                android:requiredSystemPropertyValue="+TECNO/BG6*"
                android:priority="850"
                android:isStatic="true" />
</manifest>
EOF

cat > vendor/hardware_overlay/Tecno/BG6/Android.mk << 'EOF'
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := treble-overlay-tecno-bg6
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/overlay
LOCAL_IS_RUNTIME_RESOURCE_OVERLAY := true
LOCAL_PRIVATE_PLATFORM_APIS := true
include $(BUILD_PACKAGE)
EOF

cat > vendor/hardware_overlay/Tecno/BG6/res/values/config.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <item type="dimen" name="config_screenBrightnessSettingDefaultFloat">0.096576735</item>
    <item type="dimen" name="config_screenBrightnessSettingMaximumFloat">1.0</item>
    <item type="dimen" name="config_screenBrightnessSettingMinimumFloat">7.4E-4</item>
    <dimen name="quick_qs_offset_height">40.0dip</dimen>
    <dimen name="quick_qs_total_height">164.0dip</dimen>
    <dimen name="status_bar_height_landscape">28.0dip</dimen>
    <dimen name="status_bar_height_portrait">40.0dip</dimen>

    <bool name="config_automatic_brightness_available">true</bool>
    <bool name="config_carrier_volte_available">true</bool>
    <bool name="config_carrier_volte_provisioned">true</bool>
    <bool name="config_carrier_volte_tty_supported">false</bool>
    <bool name="config_carrier_vt_available">true</bool>
    <bool name="config_device_volte_available">true</bool>
    <bool name="config_device_vt_available">true</bool>
    <bool name="config_device_wfc_ims_available">true</bool>
    <bool name="config_dozePulsePickup">false</bool>
    <bool name="config_enableAutoPowerModes">true</bool>
    <bool name="config_enableDtmfLocalTone">true</bool>
    <bool name="config_enableWifiDisplay">true</bool>
    <bool name="config_fillMainBuiltInDisplayCutout">false</bool>
    <bool name="config_setColorTransformAccelerated">true</bool>
    <bool name="config_showNavigationBar">true</bool>
    <bool name="config_suspendWhenScreenOffDueToProximity">true</bool>
    <bool name="config_swipe_up_gesture_setting_available">true</bool>
    <bool name="config_switch_phone_on_voice_reg_state_change">false</bool>
    <bool name="config_useDevInputEventForAudioJack">true</bool>
    <bool name="config_wifi_framework_enable_associated_network_selection">false</bool>
    <bool name="config_zramWriteback">true</bool>
    <bool name="skip_restoring_network_selection">true</bool>
    <bool name="useImsAlwaysForEmergencyCall">false</bool>

    <integer name="config_autoBrightnessBrighteningLightDebounce">2000</integer>
    <integer name="config_autoBrightnessDarkeningLightDebounce">4000</integer>
    <integer name="config_brightness_ramp_rate_fast">600</integer>
    <integer name="config_defaultPeakRefreshRate">90</integer>
    <integer name="config_defaultRefreshRate">90</integer>
    <integer name="config_screenBrightnessSettingMinimum">1</integer>
    <integer name="config_shutdownBatteryTemperature">600</integer>

    <string name="config_mainBuiltInDisplayCutout">M -24,0 L -24,40 L 24,40 L 24,0 Z @dp</string>
    <string name="config_qualified_networks_service_package">com.spreadtrum.ims</string>
    <string name="config_wlan_data_service_package">com.spreadtrum.ims</string>
    <string name="config_wlan_network_service_package">com.spreadtrum.ims</string>
</resources>
EOF

mkdir -p vendor/hardware_overlay/Tecno/BG6-SystemUI/res/values
cat > vendor/hardware_overlay/Tecno/BG6-SystemUI/AndroidManifest.xml << 'EOF'
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="me.phh.treble.overlay.tecno.bg6.systemui"
        android:versionCode="1"
        android:versionName="1.0">
        <overlay android:targetPackage="com.android.systemui"
                android:requiredSystemPropertyName="ro.product.vendor.device"
                android:requiredSystemPropertyValue="TECNO-BG6"
                android:priority="850"
                android:isStatic="true" />
</manifest>
EOF

cat > vendor/hardware_overlay/Tecno/BG6-SystemUI/Android.mk << 'EOF'
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := treble-overlay-tecno-bg6-systemui
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/overlay
LOCAL_IS_RUNTIME_RESOURCE_OVERLAY := true
LOCAL_PRIVATE_PLATFORM_APIS := true
include $(BUILD_PACKAGE)
EOF

cat > vendor/hardware_overlay/Tecno/BG6-SystemUI/res/values/dimens.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <dimen name="rounded_corner_content_padding">36.0px</dimen>
    <dimen name="status_bar_padding_end">6.0dip</dimen>
    <dimen name="status_bar_padding_start">6.0dip</dimen>
</resources>
EOF

if ! grep -q "treble-overlay-tecno-bg6" vendor/hardware_overlay/overlay.mk; then
    sed -i '/treble-overlay-tecno-spark10pro/a \    treble-overlay-tecno-bg6 \\\n    treble-overlay-tecno-bg6-systemui \\' vendor/hardware_overlay/overlay.mk
fi

# 3. Configure VNDK 33 and Sunno OS Branding in device/phh/treble/base.mk
sed -i 's/PRODUCT_EXTRA_VNDK_VERSIONS += 28 29/PRODUCT_EXTRA_VNDK_VERSIONS += 33/g' device/phh/treble/base.mk

if ! grep -q "ro.sunno.version" device/phh/treble/base.mk; then
    cat >> device/phh/treble/base.mk << 'EOF'

# === Sunno OS (Android 14) Official Branding & TECNO-BG6 Optimization ===
PRODUCT_BRAND := Sunno
PRODUCT_MODEL := Sunno OS
PRODUCT_SYSTEM_NAME := Sunno
PRODUCT_SYSTEM_BRAND := Sunno
PRODUCT_SYSTEM_MODEL := Sunno OS

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sunno.version=Sunno-1.0-Android14 \
    ro.sunno.maintainer=Monir \
    ro.build.display.id=Sunno-OS-1.0-Android14 \
    persist.sys.pq.cabc.enabled=0 \
    persist.sys.pq.dci.enabled=0 \
    ro.surface_flinger.use_content_detection_for_refresh_rate=false
EOF
fi

chown -R administrator:administrator vendor/hardware_overlay/Tecno/BG6 vendor/hardware_overlay/Tecno/BG6-SystemUI vendor/hardware_overlay/overlay.mk device/phh/treble

su - administrator -c '
    cd /nvme0n1-disk/shunno_os/device/phh/treble
    bash generate.sh
    ls -la AndroidProducts.mk treble_arm64_bvN.mk
'
ls -la /nvme0n1-disk/shunno_os/build/release/aconfig/ || true
echo "=== PREPARE SUNNO SOURCE COMPLETE ==="
