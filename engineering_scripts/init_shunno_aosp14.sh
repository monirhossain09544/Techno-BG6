#!/bin/bash
set -e

# Stop old sync and remove any LineageOS remnants completely
killall -q python3 git || true
sleep 2
rm -rf /nvme0n1-disk/rom/aosp

# Create clean workspace for Shunno OS (Pure Google AOSP Android 14)
mkdir -p /nvme0n1-disk/shunno_os /nvme0n1-disk/bg6_device
chown -R administrator:administrator /nvme0n1-disk/shunno_os /nvme0n1-disk/bg6_device

su - administrator -c '
    cd /nvme0n1-disk/shunno_os
    git config --global user.name "Monir"
    git config --global user.email "monir@shunno.os"
    git config --global color.ui false

    # Initialize 100% Pure Official Google AOSP Android 14 (android-14.0.0_r75)
    /usr/local/bin/repo init -u https://android.googlesource.com/platform/manifest -b android-14.0.0_r75 --depth=1 --git-lfs

    # Add Treble / Unisoc hardware bridge manifest for Android 14
    mkdir -p .repo/local_manifests
    cat > .repo/local_manifests/shunno_hw.xml << "EOF"
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <remote name="phh" fetch="https://github.com/phhusson/" />
  <remote name="td" fetch="https://github.com/TrebleDroid/" />
  <remote name="github" fetch="https://github.com/" />

  <project path="device/phh/treble" name="device_phh_treble" remote="td" revision="android-14.0" />
  <project path="vendor/hardware_overlay" name="vendor_hardware_overlay" remote="td" revision="pie" />
  <project path="vendor/vndk-tests" name="vendor_vndk-tests" remote="phh" revision="master" />
  <project path="vendor/interfaces" name="vendor_interfaces" remote="td" revision="android-14.0" />
  <project path="vendor/lptools" name="vendor_lptools" remote="phh" revision="master" />
  <project path="packages/apps/QcRilAm" name="AndyCGYan/android_packages_apps_QcRilAm" remote="github" revision="master" />
</manifest>
EOF

    nohup /usr/local/bin/repo sync -c -j24 --force-sync --no-clone-bundle --no-tags > /nvme0n1-disk/shunno_sync.log 2>&1 </dev/null &
'

sleep 5
ps aux | grep 'repo/main.py' | grep -v grep | head -n 5
tail -n 15 /nvme0n1-disk/shunno_sync.log || true
