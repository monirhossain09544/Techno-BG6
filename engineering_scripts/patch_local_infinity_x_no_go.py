import mmap
import os
import subprocess

IMG_PATH = r"D:\infinity_x_bg6_ready.img"
SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"

orig_rw = open(os.path.join(SCRATCH, "rw-system.sh"), "rb").read()
orig_pb = open(os.path.join(SCRATCH, "phh-on-boot.sh_phone"), "rb").read()
orig_rc = open(os.path.join(SCRATCH, "init.bg6.rc_phone"), "rb").read()

print(f"Original sizes: rw-system.sh={len(orig_rw)}, phh-on-boot.sh={len(orig_pb)}, init.bg6.rc={len(orig_rc)}")

# 1. Construct new rw-system.sh with exact length 53061
rw_txt = orig_rw.decode("utf-8")

# Remove unused device keylayout blocks (nubia/Teracube/ASUS_I01WD/Unihertz/Blackview/mfh505glm/liber/DOOGEE/NX669)
target_remove = """    if getprop ro.vendor.build.fingerprint |grep -q -e nubia/NX659;then
        cp /system/phh/nubia-nubia_synaptics_dsx.kl /mnt/phh/keylayout/nubia_synaptics_dsx.kl
        chmod 0644 /mnt/phh/keylayout/nubia_synaptics_dsx.kl
        changed=true
    fi

    if getprop ro.vendor.build.fingerprint |grep -q -i -e Teracube/Teracube_2e;then
        cp /system/phh/teracube2e-mtk-kpd.kl /mnt/phh/keylayout/mtk-kpd.kl
        chmod 0644 /mnt/phh/keylayout/mtk-kpd.kl
        changed=true
    fi

    if getprop ro.vendor.asus.build.fp |grep -q ASUS_I01WD;then
        cp /system/phh/zf6-goodixfp.kl /mnt/phh/keylayout/goodixfp.kl
        cp /system/phh/zf6-googlekey_input.kl /mnt/phh/keylayout/googlekey_input.kl
        chmod 0644 /mnt/phh/keylayout/goodixfp.kl
        chmod 0644 /mnt/phh/keylayout/googlekey_input.kl
        changed=true
    fi

    if getprop ro.vendor.build.fingerprint | grep -q -e Unihertz/;then
        cp /system/phh/unihertz-mtk-kpd.kl /mnt/phh/keylayout/mtk-kpd.kl
        cp /system/phh/unihertz-mtk-tpd.kl /mnt/phh/keylayout/mtk-tpd.kl
        cp /system/phh/unihertz-mtk-tpd-kpd.kl /mnt/phh/keylayout/mtk-tpd-kpd.kl
        cp /system/phh/unihertz-fingerprint_key.kl /mnt/phh/keylayout/fingerprint_key.kl
        chmod 0644 /mnt/phh/keylayout/mtk-kpd.kl
        chmod 0644 /mnt/phh/keylayout/mtk-tpd.kl
        chmod 0644 /mnt/phh/keylayout/mtk-tpd-kpd.kl
        chmod 0644 /mnt/phh/keylayout/fingerprint_key.kl
        changed=true
    fi

    if getprop ro.vendor.build.fingerprint | grep -q -i -e Blackview/BV9500Plus -e Ulefone/Armor_9 -e Blackview/BV9800;then
        cp /system/phh/bv9500plus-mtk-kpd.kl /mnt/phh/keylayout/mtk-kpd.kl
        chmod 0644 /mnt/phh/keylayout/mtk-kpd.kl
        changed=true
    fi

    if getprop ro.product.vendor.device |grep -qi -e mfh505glm -e fh50lm; then
        cp /mnt/phh/empty /mnt/phh/keylayout/uinput-fpc.kl
        chmod 0644 /mnt/phh/keylayout/uinput-fpc.kl
        changed=true
    fi

    if getprop ro.vendor.build.fingerprint | grep -iq -e motorola/liber; then
        cp /system/phh/moto-liber-gpio-keys.kl /mnt/phh/keylayout/gpio-keys.kl
        chmod 0644 /mnt/phh/keylayout/gpio-keys.kl

        cp /mnt/phh/empty /mnt/phh/keylayout/uinput_nav.kl
        chmod 0644 /mnt/phh/keylayout/uinput_nav.kl
        changed=true
    fi

    if getprop ro.vendor.build.fingerprint | grep -iq DOOGEE/S88Pro;then
          cp /mnt/phh/empty /mnt/phh/keylayout/sf-keys.kl
          chmod 0644 /mnt/phh/keylayout/sf-keys.kl
          changed=true
    fi"""

assert target_remove in rw_txt, "target_remove not found in rw-system.sh!"
rw_txt = rw_txt.replace(target_remove, "", 1)

# Inject permanent Non-Go + Vendor Overwrite + 4GB ZRAM right after chmod 0 /mnt/phh/unreadable
anchor = "chmod 0 /mnt/phh/unreadable\n"
assert anchor in rw_txt, "anchor not found in rw-system.sh!"

bg6_inject = """chmod 0 /mnt/phh/unreadable
# === TECNO-BG6 PERMANENT NON-GO & VENDOR OVERWRITE + 4GB ZRAM ===
resetprop_phh ro.config.low_ram false
resetprop_phh ro.com.google.acsa true
resetprop_phh ro.opa.eligible_device true
resetprop_phh persist.sys.phh.unisoc_color_transform_workaround 1
resetprop_phh persist.vendor.hwc.display.modeid 0
resetprop_phh ro.vendor.build.display.id BG6-F069-OP-V2387-250722
if [ -f /vendor/build.prop ]; then
    cp -a /vendor/build.prop /mnt/phh/vendor_build.prop
    sed -i -e 's/ro.config.low_ram=true/ro.config.low_ram=false/g' -e 's/-TGo//g' /mnt/phh/vendor_build.prop
    chmod 0644 /mnt/phh/vendor_build.prop
    chcon u:object_r:vendor_file:s0 /mnt/phh/vendor_build.prop
    mount -o bind /mnt/phh/vendor_build.prop /vendor/build.prop
fi
if [ -f /odm/etc/build.prop ]; then
    cp -a /odm/etc/build.prop /mnt/phh/odm_build.prop
    sed -i -e 's/ro.config.low_ram=true/ro.config.low_ram=false/g' -e 's/-TGo//g' /mnt/phh/odm_build.prop
    chmod 0644 /mnt/phh/odm_build.prop
    chcon u:object_r:vendor_configs_file:s0 /mnt/phh/odm_build.prop
    mount -o bind /mnt/phh/odm_build.prop /odm/etc/build.prop
fi
if [ -f /vendor/overlay/unisoc_go_overlay_frameworks_res.apk ]; then
    mount -o bind /mnt/phh/empty /vendor/overlay/unisoc_go_overlay_frameworks_res.apk || true
fi
if [ -f /vendor/etc/fstab.enableswap ]; then
    cp -a /vendor/etc/fstab.enableswap /mnt/phh/fstab.enableswap
    sed -i -e 's/zramsize=75%/zramsize=4294967296/g' /mnt/phh/fstab.enableswap
    chcon u:object_r:vendor_configs_file:s0 /mnt/phh/fstab.enableswap
    mount -o bind /mnt/phh/fstab.enableswap /vendor/etc/fstab.enableswap
fi
if [ -f /system/etc/permissions/platform.xml ]; then
    cp -a /system/etc/permissions/platform.xml /mnt/phh/platform.xml
    sed -i 's|</permissions>|    <feature name="android.hardware.ram.normal" />\\n</permissions>|' /mnt/phh/platform.xml
    chcon u:object_r:system_file:s0 /mnt/phh/platform.xml
    mount -o bind /mnt/phh/platform.xml /system/etc/permissions/platform.xml
fi
# === END TECNO-BG6 OVERWRITE ===
"""

rw_txt = rw_txt.replace(anchor, bg6_inject, 1)
new_rw_bytes = rw_txt.encode("utf-8")
diff_rw = len(orig_rw) - len(new_rw_bytes)
assert diff_rw >= 2, f"Need more space in rw-system.sh: diff_rw={diff_rw}"
new_rw_bytes += b"#" * (diff_rw - 1) + b"\n"
assert len(new_rw_bytes) == len(orig_rw), f"rw-system.sh size mismatch: {len(new_rw_bytes)} != {len(orig_rw)}"

# 2. Construct new phh-on-boot.sh with exact length 6713
pb_txt = orig_pb.decode("utf-8")
pb_old_block = """# zram swap fallback. the GSI itself does not set up zram -- AOSP's init.rc only
# chowns /sys/block/zram0/{idle,writeback}, expecting the vendor to mkswap +
# swapon. on devices whose vendor doesn't configure swap, low-RAM foreground
# workloads (PDF/WebView renderers in isolated processes, which carry
# oom_score_adj ~1000) get OOM-reaped at the slightest memory pressure,
# producing blurry or failed renders (#92 and similar). running this at
# boot_completed (not during early init) means a vendor that already set up
# zram is left untouched -- the guard skips when any swap is already active.
# no-op when the kernel has no zram support (/sys/block/zram0 absent) or no
# RAM read is available. zram is compressed swap in RAM; disksize is half of
# MemTotal, lz4 when the kernel exposes it (else the zram default, usually
# lzo). once zram is active, raise swappiness so the kernel actually swaps
# cold anon pages to it (zram is fast/in-RAM, so high swappiness is a net
# win) and lower the dirty ratios so less RAM is held by dirty pages -- both
# only when the fallback activates, so devices with vendor zram (or no zram)
# keep their default vm sysctls. this runs in the phhsu_daemon domain, which
# already holds rw_file_perms on dev_type:blk_file (ram_device) and
# rwx_file_perms on sysfs_type:file (sysfs_zram) + proc_type writes +
# capability sys_admin, so no sepolicy companion is needed."""

assert pb_old_block in pb_txt, "pb_old_block not found in phh-on-boot.sh!"
pb_new_block = """# TECNO-BG6 4GB Virtual RAM (ZRAM LZ4) & Non-Go Enforcement
resetprop_phh ro.config.low_ram false
resetprop_phh ro.com.google.acsa true
resetprop_phh ro.opa.eligible_device true
resetprop_phh persist.sys.phh.unisoc_color_transform_workaround 1
if [ -e /sys/block/zram0 ]; then
    zsz=$(cat /sys/block/zram0/disksize 2>/dev/null)
    if [ "$zsz" != "4294967296" ]; then
        swapoff /dev/block/zram0 2>/dev/null || true
        echo 1 > /sys/block/zram0/reset 2>/dev/null || true
        echo lz4 > /sys/block/zram0/comp_algorithm 2>/dev/null || true
        echo 4294967296 > /sys/block/zram0/disksize 2>/dev/null || true
        mkswap /dev/block/zram0 >/dev/null 2>&1 || true
        swapon /dev/block/zram0 2>/dev/null || true
    fi
fi"""

pb_txt = pb_txt.replace(pb_old_block, pb_new_block, 1)
new_pb_bytes = pb_txt.encode("utf-8")
diff_pb = len(orig_pb) - len(new_pb_bytes)
assert diff_pb >= 2, f"Need more space in phh-on-boot.sh: diff_pb={diff_pb}"
new_pb_bytes += b"#" * (diff_pb - 1) + b"\n"
assert len(new_pb_bytes) == len(orig_pb), f"phh-on-boot.sh size mismatch: {len(new_pb_bytes)} != {len(orig_pb)}"

# 3. Construct new init.bg6.rc with exact length 1078
new_rc_txt = """# TECNO-BG6 Silicon RC
on early-init
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    setprop keystore.module_hash.sent true

on init
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    exec u:r:phhsu_daemon:s0 root -- /system/bin/resetprop_phh ro.config.low_ram false

on post-fs-data
    setprop persist.sys.phh.unisoc_color_transform_workaround 1
    exec u:r:phhsu_daemon:s0 root -- /system/bin/resetprop_phh ro.config.low_ram false
    exec - root root -- /system/bin/bg6_perf_engine --boot

on boot
    exec u:r:phhsu_daemon:s0 root -- /system/bin/resetprop_phh ro.config.low_ram false
    exec - root root -- /system/bin/bg6_perf_engine --boot

on property:sys.boot_completed=1
    start bg6_perf_engine

service bg6_perf_engine /system/bin/bg6_perf_engine --daemon
    class late_start
    user root
    group root system
    seclabel u:r:phhsu_daemon:s0
"""
new_rc_bytes = new_rc_txt.encode("utf-8")
diff_rc = len(orig_rc) - len(new_rc_bytes)
assert diff_rc >= 2, f"Need more space in init.bg6.rc: diff_rc={diff_rc}"
new_rc_bytes += b"#" * (diff_rc - 1) + b"\n"
assert len(new_rc_bytes) == len(orig_rc), f"init.bg6.rc size mismatch: {len(new_rc_bytes)} != {len(orig_rc)}"

# Write patched files to scratch and verify shell syntax on phone via adb!
rw_patched_path = os.path.join(SCRATCH, "rw-system.sh.patched")
pb_patched_path = os.path.join(SCRATCH, "phh-on-boot.sh.patched")
rc_patched_path = os.path.join(SCRATCH, "init.bg6.rc.patched")

open(rw_patched_path, "wb").write(new_rw_bytes)
open(pb_patched_path, "wb").write(new_pb_bytes)
open(rc_patched_path, "wb").write(new_rc_bytes)

subprocess.run(["adb", "-s", "1099738415003670", "push", rw_patched_path, "/data/local/tmp/rw_test.sh"], check=True)
subprocess.run(["adb", "-s", "1099738415003670", "push", pb_patched_path, "/data/local/tmp/pb_test.sh"], check=True)
subprocess.run(["adb", "-s", "1099738415003670", "shell", "/system/bin/sh -n /data/local/tmp/rw_test.sh && /system/bin/sh -n /data/local/tmp/pb_test.sh && echo 'SHELL SYNTAX 100% VALID'"], check=True)

# Apply surgical in-place patch to D:\infinity_x_bg6_ready.img
with open(IMG_PATH, "r+b") as f:
    mm = mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_WRITE)
    off_rw = mm.find(orig_rw)
    off_pb = mm.find(orig_pb)
    off_rc = mm.find(orig_rc)
    print(f"Found offsets in {IMG_PATH}: rw={off_rw}, pb={off_pb}, rc={off_rc}")
    assert off_rw > 0 and off_pb > 0 and off_rc > 0, "Could not find original blocks!"
    mm[off_rw:off_rw + len(orig_rw)] = new_rw_bytes
    mm[off_pb:off_pb + len(orig_pb)] = new_pb_bytes
    mm[off_rc:off_rc + len(orig_rc)] = new_rc_bytes
    mm.flush()
    mm.close()

print("=== SURGICAL IN-PLACE PATCH OF D:\\infinity_x_bg6_ready.img COMPLETE ===")
