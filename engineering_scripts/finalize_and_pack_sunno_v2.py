import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''set -e
cd /nvme0n1-disk/shunno_os

python3 - << 'PY'
# 1. Keep lcd_icnl9916_boe_mipi_hdp_bg6h on modeid=0 (60Hz) in framework-res & overlay to prevent Unisoc HWC mode-switch blanking
cfg_path = "frameworks/base/core/res/res/values/config.xml"
with open(cfg_path, "r") as f:
    cfg = f.read()
cfg = cfg.replace('<integer name="config_defaultRefreshRate">90</integer>',
                  '<integer name="config_defaultRefreshRate">60</integer>')
cfg = cfg.replace('<integer name="config_defaultPeakRefreshRate">90</integer>',
                  '<integer name="config_defaultPeakRefreshRate">60</integer>')
with open(cfg_path, "w") as f:
    f.write(cfg)

with open("vendor/hardware_overlay/Tecno/BG6/res/values/config.xml", "w") as f:
    f.write("""<?xml version="1.0" encoding="utf-8"?>
<resources>
    <integer name="config_defaultPeakRefreshRate">60</integer>
    <integer name="config_defaultRefreshRate">60</integer>
    <bool name="config_setColorTransformAccelerated">false</bool>
    <integer name="config_navBarInteractionMode">2</integer>
    <bool name="config_defaultBatteryPercentageSetting">true</bool>
</resources>
""")

# Update badge text in SunnoHomeView.java so it says "SUNNO OS 2.0 • TURBO ENGINE"
shv_path = "packages/apps/Launcher3/quickstep/src/com/android/launcher3/uioverrides/SunnoHomeView.java"
with open(shv_path, "r") as f:
    shv = f.read()
shv = shv.replace("● SUNNO OS 2.0 • 90Hz", "● SUNNO OS 2.0 • TURBO UI")
shv = shv.replace("BATTERY • --% • 90 FPS", "BATTERY • --% • TURBO")
shv = shv.replace('% • 90 FPS"', '% • TURBO"')
shv = shv.replace("⚡ SUNNO TURBO • 90Hz LOCKED", "⚡ SUNNO TURBO • OPTIMIZED")
with open(shv_path, "w") as f:
    f.write(shv)
print("Updated refresh rate lock & SunnoHomeView labels!")
PY

source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
m -j$(nproc) framework-res Launcher3QuickStep treble-overlay-tecno-bg6

# Remove any stale oat/ folders so Android loads our newly compiled DEX classes directly
rm -rf out/target/product/tdgsi_arm64_ab/system/system_ext/priv-app/SystemUI/oat
rm -rf out/target/product/tdgsi_arm64_ab/system/system_ext/priv-app/Launcher3QuickStep/oat
rm -rf out/target/product/tdgsi_arm64_ab/system/product/app/Browser2

# Update build.prop, product/etc/build.prop, rw-system.sh, and sunno_net.rc
python3 - << 'PY'
sys_root = "/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system"

sunno_props = """
# === SUNNO OS 2.0 FLAGSHIP UI & PERFORMANCE ENGINE ===
ro.sunno.version=Sunno OS 2.0 (Modern Glass Edition)
ro.config.low_ram=false
ro.sf.lcd_density=280
ro.surface_flinger.supports_background_blur=1
ro.surface_flinger.max_frame_buffer_acquired_buffers=3
debug.sf.blas_enable=1
debug.hwui.use_buffer_age=true
debug.hwui.use_partial_updates=true
debug.renderthread.reduceopstasksplitting=true
debug.sf.latch_unsignaled=0
debug.sf.enable_gl_backpressure=1
debug.sf.disable_backpressure=0
persist.wm.debug.predictive_back=1
persist.wm.debug.predictive_back_anim=1
dalvik.vm.dex2oat-filter=speed-profile
dalvik.vm.heapgrowthlimit=256m
dalvik.vm.heapsize=512m
dalvik.vm.heaptargetutilization=0.75
dalvik.vm.heapminfree=2m
dalvik.vm.heapmaxfree=8m
"""

for prop_file in [f"{sys_root}/build.prop", f"{sys_root}/product/etc/build.prop"]:
    with open(prop_file, "r") as f:
        txt = f.read()
    # Clean previous Sunno block if present
    if "# === SUNNO OS 2.0 FLAGSHIP UI" in txt:
        txt = txt.split("# === SUNNO OS 2.0 FLAGSHIP UI")[0]
    txt = txt.replace("ro.config.low_ram=true", "ro.config.low_ram=false")
    txt = txt.rstrip() + "\n" + sunno_props
    with open(prop_file, "w") as f:
        f.write(txt)

# Ensure rw-system.sh overrides /vendor/build.prop low_ram and lcd_density=280 before zygote starts
for rw_path in [f"{sys_root}/bin/rw-system.sh", "/nvme0n1-disk/shunno_os/device/phh/treble/rw-system.sh"]:
    with open(rw_path, "r") as f:
        rw = f.read()
    # Replace our earlier injection cleanly
    old_inj = """resetprop_phh ro.config.low_ram false
sed 's/ro.config.low_ram=true/ro.config.low_ram=false/g' /vendor/build.prop > /dev/vendor_build.prop && chmod 644 /dev/vendor_build.prop && mount -o bind /dev/vendor_build.prop /vendor/build.prop
"""
    new_inj = """resetprop_phh ro.config.low_ram false
resetprop_phh ro.sf.lcd_density 280
resetprop_phh ro.surface_flinger.supports_background_blur 1
sed -e 's/ro.config.low_ram=true/ro.config.low_ram=false/g' -e 's/ro.sf.lcd_density=320/ro.sf.lcd_density=280/g' /vendor/build.prop > /dev/vendor_build.prop && chmod 644 /dev/vendor_build.prop && mount -o bind /dev/vendor_build.prop /vendor/build.prop
"""
    if old_inj in rw:
        rw = rw.replace(old_inj, new_inj, 1)
    elif "resetprop_phh ro.sf.lcd_density 280" not in rw:
        rw = rw.replace("#!/system/bin/sh\n", "#!/system/bin/sh\n" + new_inj, 1)
    with open(rw_path, "w") as f:
        f.write(rw)

with open(f"{sys_root}/etc/init/sunno_net.rc", "w") as f:
    f.write("""on property:sys.boot_completed=1
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
""")
print("Configured all system properties, rw-system.sh, and sunno_net.rc!")
PY

# Pack system.img with build_image
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:/nvme0n1-disk/shunno_os/system/extras/ext4_utils:$PATH"
out/host/linux-x86/bin/build_image \
    out/target/product/tdgsi_arm64_ab/system \
    out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system_image_info.txt \
    out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system.img \
    out/target/product/tdgsi_arm64_ab/system

cp -f out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system.img out/target/product/tdgsi_arm64_ab/system.img

echo "=== VERIFYING NEW SYSTEM.IMG CONTENTS ==="
/sbin/debugfs -R "ls -l /system/product/app/Chrome" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/product/app/TrichromeLibrary" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/system_ext/priv-app/Launcher3QuickStep" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/system_ext/priv-app/SystemUI" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/bin/resetprop_phh" out/target/product/tdgsi_arm64_ab/system.img
ls -lh out/target/product/tdgsi_arm64_ab/system.img
stat -c "%s" out/target/product/tdgsi_arm64_ab/system.img

# Compress sparse image with zstd for fast download
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
