import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

remote_py = r'''import os, subprocess

base = "/nvme0n1-disk/shunno_os"
sys_dir = f"{base}/out/target/product/tdgsi_arm64_ab/system"

# 1. Create /system/etc/enhance_cm_identity.bin (24-byte binary struct cm_cfg: c00=1024, c11=1024, c22=1024)
# struct cm_cfg { short c00, c01, c02, c03, c10, c11, c12, c13, c20, c21, c22, c23; }
cm_identity = (
    b"\x00\x04" + b"\x00\x00" * 4 +
    b"\x00\x04" + b"\x00\x00" * 4 +
    b"\x00\x04" + b"\x00\x00"
)
assert len(cm_identity) == 24
cm_bin_path = f"{sys_dir}/etc/sunno_cm_identity.bin"
with open(cm_bin_path, "wb") as f:
    f.write(cm_identity)
os.chmod(cm_bin_path, 0o644)

# 2. Patch rw-system.sh
rw_path = f"{sys_dir}/bin/rw-system.sh"
with open(rw_path, "r") as f:
    rw_text = f.read()

# Replace unconditional vendor.display.res_switch_en 1
rw_text = rw_text.replace("setprop vendor.display.res_switch_en 1", "setprop vendor.display.res_switch_en 0")

sunno_block = """# === SUNNO OS DISPLAY & PANEL PROTECTION FIX (TECNO-BG6 / qogirl6_dpu / ICNL9916) ===
if [ -e /sys/class/display/dispc0/PQ/cm ]; then
    cat /system/etc/sunno_cm_identity.bin > /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
    chmod 0444 /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
fi
if [ -e /sys/class/display/dispc0/PQ/disable ]; then
    echo 1 > /sys/class/display/dispc0/PQ/disable 2>/dev/null || true
fi
if [ -e /proc/ankai/shutdown_flag ]; then
    echo 0 > /proc/ankai/shutdown_flag 2>/dev/null || true
fi
resetprop_phh ro.surface_flinger.use_color_management false
resetprop_phh persist.sys.sf.color_saturation 1.0
resetprop_phh persist.sys.sf.native_mode 0
resetprop_phh ro.surface_flinger.use_content_detection_for_refresh_rate false
resetprop_phh ro.surface_flinger.set_idle_timer_ms 0
resetprop_phh ro.surface_flinger.set_touch_timer_ms 0
resetprop_phh ro.surface_flinger.set_display_power_timer_ms 0
resetprop_phh persist.vendor.hwc.display.modeid 0
resetprop_phh vendor.display.res_switch_en 0
resetprop_phh ro.sr.displaysize.defaultresolution 1
resetprop_phh ro.sr.displaysize.lowresolution 1
resetprop_phh ro.sprd.displayenhance true
resetprop_phh ro.sprd.nightdisplay.enhance true
resetprop_phh ro.vendor.display.enhance.BootComplete 1
# === END SUNNO OS DISPLAY FIX ===
"""

marker = "# === SUNNO OS DISPLAY & PANEL PROTECTION FIX"
if marker not in rw_text:
    # Insert right after #!/system/bin/sh and set -e/+e
    lines = rw_text.splitlines(True)
    insert_idx = 1
    for i, line in enumerate(lines[:15]):
        if "set " in line:
            insert_idx = i + 1
    lines.insert(insert_idx, sunno_block)
    lines.append("\n" + sunno_block)
    rw_text = "".join(lines)
    with open(rw_path, "w") as f:
        f.write(rw_text)
    os.chmod(rw_path, 0o755)

# 3. Patch phh-on-data.sh (runs on early-boot right before surfaceflinger) and phh-on-boot.sh
on_data_path = f"{sys_dir}/bin/phh-on-data.sh"
if os.path.exists(on_data_path):
    with open(on_data_path, "r") as f:
        od_text = f.read()
    od_block = """
# === SUNNO OS EARLY-BOOT DISPLAY & PANEL GUARD ===
if [ -e /sys/class/display/dispc0/PQ/cm ]; then
    chmod 0644 /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
    cat /system/etc/sunno_cm_identity.bin > /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
    chmod 0444 /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
fi
if [ -e /proc/ankai/shutdown_flag ]; then
    echo 0 > /proc/ankai/shutdown_flag 2>/dev/null || true
fi
(
    for i in $(seq 1 60); do
        if [ -e /sys/class/display/dispc0/PQ/cm ]; then
            chmod 0644 /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
            cat /system/etc/sunno_cm_identity.bin > /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
            chmod 0444 /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
        fi
        if [ -e /proc/ankai/shutdown_flag ]; then
            echo 0 > /proc/ankai/shutdown_flag 2>/dev/null || true
        fi
        sleep 1
    done
) </dev/null >/dev/null 2>&1 &
"""
    if "# === SUNNO OS EARLY-BOOT DISPLAY & PANEL GUARD ===" not in od_text:
        od_text = od_text + "\n" + od_block
        with open(on_data_path, "w") as f:
            f.write(od_text)
        os.chmod(on_data_path, 0o755)

on_boot_path = f"{sys_dir}/bin/phh-on-boot.sh"
with open(on_boot_path, "r") as f:
    ob_text = f.read()

ob_block = """
# === SUNNO OS ON-BOOT DISPLAY & PANEL GUARD ===
if [ -e /sys/class/display/dispc0/PQ/cm ]; then
    chmod 0644 /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
    cat /system/etc/sunno_cm_identity.bin > /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
    chmod 0444 /sys/class/display/dispc0/PQ/cm 2>/dev/null || true
fi
if [ -e /sys/class/display/dispc0/PQ/disable ]; then
    echo 1 > /sys/class/display/dispc0/PQ/disable 2>/dev/null || true
fi
if [ -e /proc/ankai/shutdown_flag ]; then
    echo 0 > /proc/ankai/shutdown_flag 2>/dev/null || true
fi
if [ -e /sys/class/backlight/sprd_backlight/brightness ]; then
    cur_bl=$(cat /sys/class/backlight/sprd_backlight/brightness 2>/dev/null || echo 0)
    if [ "$cur_bl" -lt 100 ] 2>/dev/null; then
        echo 1200 > /sys/class/backlight/sprd_backlight/brightness 2>/dev/null || true
    fi
fi
"""
if "# === SUNNO OS ON-BOOT DISPLAY & PANEL GUARD ===" not in ob_text:
    ob_text = ob_text + "\n" + ob_block
    with open(on_boot_path, "w") as f:
        f.write(ob_text)
    os.chmod(on_boot_path, 0o755)

# 4. Update build.prop files
props_to_ensure = {
    "ro.surface_flinger.use_color_management": "false",
    "persist.sys.sf.color_saturation": "1.0",
    "persist.sys.sf.native_mode": "0",
    "ro.surface_flinger.use_content_detection_for_refresh_rate": "false",
    "ro.surface_flinger.set_idle_timer_ms": "0",
    "ro.surface_flinger.set_touch_timer_ms": "0",
    "ro.surface_flinger.set_display_power_timer_ms": "0",
    "persist.vendor.hwc.display.modeid": "0",
    "vendor.display.res_switch_en": "0",
    "ro.sr.displaysize.defaultresolution": "1",
    "ro.sr.displaysize.lowresolution": "1",
    "ro.sprd.displayenhance": "true",
    "ro.sprd.nightdisplay.enhance": "true",
    "ro.vendor.display.enhance.BootComplete": "1",
}

for prop_rel in ["build.prop", "product/etc/build.prop", "system_ext/etc/build.prop"]:
    pfile = f"{sys_dir}/{prop_rel}"
    if os.path.exists(pfile):
        with open(pfile, "r") as f:
            pcontent = f.read()
        new_lines = []
        seen = set()
        for line in pcontent.splitlines():
            if "=" in line and not line.lstrip().startswith("#"):
                k = line.split("=", 1)[0].strip()
                if k in props_to_ensure:
                    new_lines.append(f"{k}={props_to_ensure[k]}")
                    seen.add(k)
                    continue
            new_lines.append(line)
        for k, v in props_to_ensure.items():
            if k not in seen:
                new_lines.append(f"{k}={v}")
        with open(pfile, "w") as f:
            f.write("\n".join(new_lines) + "\n")

print("Patched system files successfully.")
'''

sftp = ssh.open_sftp()
with sftp.file("/tmp/apply_sunno_patch.py", "w") as f:
    f.write(remote_py)
sftp.close()

cmd = """set -e
python3 /tmp/apply_sunno_patch.py
cd /nvme0n1-disk/shunno_os
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"
out/host/linux-x86/bin/build_image \
    out/target/product/tdgsi_arm64_ab/system \
    out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system_image_info.txt \
    out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system.img \
    out/target/product/tdgsi_arm64_ab/system
cp -f out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system.img out/target/product/tdgsi_arm64_ab/system.img
ls -lh out/target/product/tdgsi_arm64_ab/system.img
"""

stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode('utf-8', 'ignore'))
err = stderr.read().decode('utf-8', 'ignore')
if err:
    print("STDERR:", err)

ssh.close()
