#!/bin/bash
set -e
mkdir -p /nvme0n1-disk/rom/aosp /nvme0n1-disk/bg6_device
chown -R administrator:administrator /nvme0n1-disk/rom /nvme0n1-disk/bg6_device

# Install git-lfs if not installed
if ! command -v git-lfs >/dev/null 2>&1; then
    DEBIAN_FRONTEND=noninteractive apt-get install -y -qq git-lfs || true
fi

su - administrator -c '
    mkdir -p /nvme0n1-disk/rom/aosp
    cd /nvme0n1-disk/rom/aosp
    git config --global user.name "Monir"
    git config --global user.email "monir@bg6.local"
    git config --global color.ui false
    /usr/local/bin/repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --depth=1 --git-lfs
    mkdir -p .repo/local_manifests
    cat > .repo/local_manifests/treble_unisoc.xml << "EOF"
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="TrebleDroid/device_phh_treble" path="device/phh/treble" remote="github" revision="android-13.0" />
  <project name="TrebleDroid/vendor_hardware_overlay" path="vendor/hardware_overlay" remote="github" revision="pie" />
  <project name="TrebleDroid/vendor_interfaces" path="vendor/interfaces" remote="github" revision="android-11.0" />
</manifest>
EOF
    nohup /usr/local/bin/repo sync -c -j16 --force-sync --no-clone-bundle --no-tags > /nvme0n1-disk/rom/repo_sync.log 2>&1 </dev/null &
'
sleep 3
ps aux | grep repo | grep -v grep || true
tail -n 20 /nvme0n1-disk/rom/repo_sync.log || true
