import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

remote_py = r'''import os

base = "/nvme0n1-disk/shunno_os"

# 1. Fix ro.setupwizard.mode=OPTIONAL -> DISABLED in device/phh/treble/base.mk
base_mk = f"{base}/device/phh/treble/base.mk"
with open(base_mk, "r") as f:
    b_txt = f.read()
b_txt = b_txt.replace("ro.setupwizard.mode=OPTIONAL", "ro.setupwizard.mode=DISABLED")
with open(base_mk, "w") as f:
    f.write(b_txt)

# 2. Remove duplicate sysprop assignments in treble_arm64_bgN.mk (keep unique props only)
bgN_mk = f"{base}/device/phh/treble/treble_arm64_bgN.mk"
bgN_content = """TARGET_GAPPS_ARCH := arm64
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
PRODUCT_PACKAGES := $(filter-out su SetupWizard GoogleRestore GmsSetupWizardOverlay,$(PRODUCT_PACKAGES))

PRODUCT_PACKAGES += \\
    webview \\
    Provision \\
    HTMLViewer \\
    SunnoRiderTile \\
    privapp_permissions_sunno_ridertile \\
    treble-overlay-tecno-bg6 \\
    treble-overlay-tecno-bg6-systemui

PRODUCT_COPY_FILES += \\
    device/phh/treble/sunno_cm_identity.bin:system/etc/sunno_cm_identity.bin

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \\
    ro.surface_flinger.use_color_management=false \\
    persist.sys.sf.color_saturation=1.0 \\
    persist.sys.sf.native_mode=0 \\
    ro.surface_flinger.set_idle_timer_ms=0 \\
    ro.surface_flinger.set_touch_timer_ms=0 \\
    ro.surface_flinger.set_display_power_timer_ms=0 \\
    persist.vendor.hwc.display.modeid=0 \\
    vendor.display.res_switch_en=0 \\
    ro.sr.displaysize.defaultresolution=1 \\
    ro.sr.displaysize.lowresolution=1 \\
    ro.sprd.displayenhance=true \\
    ro.sprd.nightdisplay.enhance=true \\
    ro.vendor.display.enhance.BootComplete=1
"""
with open(bgN_mk, "w") as f:
    f.write(bgN_content)
print("Fixed duplicate sysprops in base.mk and treble_arm64_bgN.mk!")
'''

sftp = ssh.open_sftp()
with sftp.file("/tmp/fix_dup_props.py", "w") as f:
    f.write(remote_py)
sftp.close()

cmd = """set -e
python3 /tmp/fix_dup_props.py
cd /nvme0n1-disk/shunno_os
source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
m systemimage -j72
ls -lh out/target/product/tdgsi_arm64_ab/system.img
stat -c "%s" out/target/product/tdgsi_arm64_ab/system.img
"""

stdin, stdout, stderr = ssh.exec_command(f"bash -c '{cmd}'")
while True:
    line = stdout.readline()
    if not line:
        break
    print(line, end="", flush=True)
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)
ssh.close()
