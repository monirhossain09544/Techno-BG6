#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os

echo "=== Checking treble_arm64_bgN.mk ==="
cat device/phh/treble/treble_arm64_bgN.mk

# Ensure Sunno branding is in treble_arm64_bgN.mk as well as treble_arm64_bvN.mk
sed -i 's/PRODUCT_BRAND := .*/PRODUCT_BRAND := Sunno/g' device/phh/treble/treble_arm64_bgN.mk
sed -i 's/PRODUCT_MODEL := .*/PRODUCT_MODEL := Sunno/g' device/phh/treble/treble_arm64_bgN.mk
cat device/phh/treble/treble_arm64_bgN.mk

# Also customize Settings -> About Phone strings in packages/apps/Settings/res/values/strings.xml
SETTINGS_STRINGS="packages/apps/Settings/res/values/strings.xml"
if [ -f "$SETTINGS_STRINGS" ]; then
    sed -i 's|<string name="firmware_version">Android version</string>|<string name="firmware_version">Sunno OS (Android 14)</string>|g' "$SETTINGS_STRINGS"
    sed -i 's|<string name="about_settings">About phone</string>|<string name="about_settings">About Sunno Phone</string>|g' "$SETTINGS_STRINGS"
    grep -E "firmware_version|about_settings" "$SETTINGS_STRINGS" | head -n 6
fi

# Launch the 72-thread AOSP Android 14 build in background via nohup
rm -f /nvme0n1-disk/shunno_os/build_sunno.log
sudo -u administrator bash -c '
cd /nvme0n1-disk/shunno_os
export USER=administrator
export LC_ALL=C
source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
nohup m RELAX_USES_LIBRARY_CHECK=true BUILD_NUMBER=Sunno-OS-1.0 -j72 systemimage > /nvme0n1-disk/shunno_os/build_sunno.log 2>&1 < /dev/null &
echo "BUILD_PID=$!"
sleep 5
ps -ef | grep -E "soong|ninja|kati" | grep -v grep | head -n 5 || true
cat /nvme0n1-disk/shunno_os/build_sunno.log | tail -n 20
'
