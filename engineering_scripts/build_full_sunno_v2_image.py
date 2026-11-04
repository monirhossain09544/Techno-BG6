import os
import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"
SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
ROOT = "/nvme0n1-disk/shunno_os"
PREBUILTS = f"{ROOT}/device/phh/treble/sunno_prebuilts"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

_, out, _ = ssh.exec_command(f"mkdir -p {PREBUILTS}")
out.read()

sftp = ssh.open_sftp()
print("Uploading persistent prebuilts (Chrome, TrichromeLibrary, apns-conf.xml, resetprop_phh) to device/phh/treble/sunno_prebuilts/...")

def upload_if_missing(local_path, remote_path):
    local_sz = os.path.getsize(local_path)
    try:
        st = sftp.stat(remote_path)
        if st.st_size == local_sz:
            print(f"  Already present: {remote_path} ({local_sz} bytes)")
            return
    except Exception:
        pass
    print(f"  Uploading {local_path} -> {remote_path} ({local_sz} bytes)...")
    sftp.put(local_path, remote_path)

upload_if_missing(r"D:\Chrome.apk", f"{PREBUILTS}/Chrome.apk")
upload_if_missing(r"D:\TrichromeLibrary.apk", f"{PREBUILTS}/TrichromeLibrary.apk")
upload_if_missing(os.path.join(SCRATCH, "stock_apns-conf.xml"), f"{PREBUILTS}/apns-conf.xml")
upload_if_missing(os.path.join(SCRATCH, "resetprop_phh"), f"{PREBUILTS}/resetprop_phh")
sftp.close()

cmd = r'''set -e
cd /nvme0n1-disk/shunno_os

# 1. Update treble_arm64_bgN.mk with all Sunno OS 2.0 Flagship properties (no duplicate keys!)
cat << 'EOF' > device/phh/treble/treble_arm64_bgN.mk
TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)
$(call inherit-product, device/phh/treble/gapps.mk)

PRODUCT_NAME := treble_arm64_bgN
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := Sunno
PRODUCT_SYSTEM_BRAND := Sunno
PRODUCT_MODEL := Sunno
PRODUCT_SYSTEM_MODEL := Sunno
PRODUCT_SYSTEM_NAME := Sunno
PRODUCT_MANUFACTURER := Sunno
PRODUCT_SYSTEM_MANUFACTURER := Sunno

PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES_DEBUG := $(filter-out su,$(PRODUCT_PACKAGES_DEBUG))
PRODUCT_PACKAGES := $(filter-out su SetupWizard GoogleRestore GmsSetupWizardOverlay Browser2,$(PRODUCT_PACKAGES))

PRODUCT_PACKAGES += \
    webview \
    Provision \
    HTMLViewer \
    SunnoRiderTile \
    privapp_permissions_sunno_ridertile \
    treble-overlay-tecno-bg6 \
    treble-overlay-tecno-bg6-systemui

PRODUCT_COPY_FILES += \
    device/phh/treble/sunno_cm_identity.bin:system/etc/sunno_cm_identity.bin

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.low_ram=false \
    ro.sf.lcd_density=280 \
    ro.surface_flinger.supports_background_blur=1 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.use_color_management=false \
    persist.sys.sf.color_saturation=1.0 \
    persist.sys.sf.native_mode=0 \
    ro.surface_flinger.set_idle_timer_ms=0 \
    ro.surface_flinger.set_touch_timer_ms=0 \
    ro.surface_flinger.set_display_power_timer_ms=0 \
    persist.vendor.hwc.display.modeid=0 \
    vendor.display.res_switch_en=0 \
    ro.sr.displaysize.defaultresolution=1 \
    ro.sr.displaysize.lowresolution=1 \
    ro.sprd.displayenhance=true \
    ro.sprd.nightdisplay.enhance=true \
    ro.vendor.display.enhance.BootComplete=1 \
    debug.sf.blas_enable=1 \
    debug.hwui.use_buffer_age=true \
    debug.hwui.use_partial_updates=true \
    debug.renderthread.reduceopstasksplitting=true \
    debug.sf.latch_unsignaled=0 \
    debug.sf.enable_gl_backpressure=1 \
    debug.sf.disable_backpressure=0 \
    persist.wm.debug.predictive_back=1 \
    persist.wm.debug.predictive_back_anim=1 \
    dalvik.vm.dex2oat-filter=speed-profile \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.low_ram=false \
    ro.sf.lcd_density=280 \
    ro.surface_flinger.supports_background_blur=1
EOF

# 2. Build systemimage cleanly with ninja
source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
m systemimage -j72

# 3. Stage Chrome, TrichromeLibrary, apns-conf.xml, resetprop_phh, and sunno_net.rc into system/ and repack system.img
SYS="out/target/product/tdgsi_arm64_ab/system"
PRE="device/phh/treble/sunno_prebuilts"

rm -rf "$SYS/product/app/Browser2"
mkdir -p "$SYS/product/app/Chrome" "$SYS/product/app/TrichromeLibrary"
cp -f "$PRE/Chrome.apk" "$SYS/product/app/Chrome/Chrome.apk"
cp -f "$PRE/TrichromeLibrary.apk" "$SYS/product/app/TrichromeLibrary/TrichromeLibrary.apk"
chmod 644 "$SYS/product/app/Chrome/Chrome.apk" "$SYS/product/app/TrichromeLibrary/TrichromeLibrary.apk"

cp -f "$PRE/apns-conf.xml" "$SYS/etc/apns-conf.xml"
cp -f "$PRE/apns-conf.xml" "$SYS/product/etc/apns-conf.xml"
chmod 644 "$SYS/etc/apns-conf.xml" "$SYS/product/etc/apns-conf.xml"

cp -f "$PRE/resetprop_phh" "$SYS/bin/resetprop_phh"
chmod 755 "$SYS/bin/resetprop_phh"

cat << 'EOF' > "$SYS/etc/init/sunno_net.rc"
on property:sys.boot_completed=1
    write /proc/sys/net/ipv6/conf/seth_lte0/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte1/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte2/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte3/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte4/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte5/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte6/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte7/disable_ipv6 1
    exec - system system -- /system/bin/cmd overlay enable-exclusive --user 0 com.android.internal.systemui.navbar.gestural
    exec - system system -- /system/bin/cmd role add-role-holder android.app.role.BROWSER com.android.chrome
    exec - system system -- /system/bin/settings put system status_bar_show_battery_percent 1
EOF
chmod 644 "$SYS/etc/init/sunno_net.rc"

export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:/nvme0n1-disk/shunno_os/system/extras/ext4_utils:$PATH"
out/host/linux-x86/bin/build_image \
    out/target/product/tdgsi_arm64_ab/system \
    out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system_image_info.txt \
    out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system.img \
    out/target/product/tdgsi_arm64_ab/system

cp -f out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system.img out/target/product/tdgsi_arm64_ab/system.img

echo "=== VERIFYING FINAL SYSTEM.IMG ==="
/sbin/debugfs -R "ls -l /system/product/app/Chrome" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/product/app/TrichromeLibrary" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/system_ext/priv-app/Launcher3QuickStep" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/system_ext/priv-app/SystemUI" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/bin/resetprop_phh" out/target/product/tdgsi_arm64_ab/system.img
ls -lh out/target/product/tdgsi_arm64_ab/system.img
stat -c "%s" out/target/product/tdgsi_arm64_ab/system.img

out/host/linux-x86/bin/img2simg out/target/product/tdgsi_arm64_ab/system.img /tmp/sunno_v2_system_sparse.img
zstd -1 -f /tmp/sunno_v2_system_sparse.img -o /tmp/sunno_v2_system_sparse.img.zst
ls -lh /tmp/sunno_v2_system_sparse.img.zst
'''

stdin, stdout, stderr = ssh.exec_command(cmd)
while True:
    line = stdout.readline()
    if not line:
        break
    print(line, end="", flush=True)

err = stderr.read().decode()
if err:
    print("STDERR:\n", err)
exit_status = stdout.channel.recv_exit_status()
ssh.close()
raise SystemExit(exit_status)
