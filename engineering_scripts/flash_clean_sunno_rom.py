import subprocess
import time

adb = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
fb = r"C:\Users\Monir\Android\Sdk\platform-tools\fastboot.exe"
sys_img = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\sunno_system.img"
misc_wipe = r"C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root\package_emmc\misc-wipe.bin"

print("1. Rebooting phone into fastbootd via ADB...")
subprocess.run([adb, "-s", "1099738415003670", "reboot", "fastboot"], check=True)
time.sleep(10)

print("2. Verifying fastbootd connection...")
subprocess.run([fb, "getvar", "is-userspace"], check=True)

for part in ["product_b", "system_b", "system_ext_b", "vendor_b", "system_a-cow", "system_ext_a", "product_a"]:
    subprocess.run([fb, "delete-logical-partition", part])

print("3. Flashing newly built clean Sunno OS 1.0 system.img (2.50 GB)...")
subprocess.run([fb, "flash", "system_a", sys_img], check=True)

print("4. Erasing metadata and writing misc-wipe.bin for clean f2fs /data format...")
subprocess.run([fb, "erase", "metadata"], check=True)
subprocess.run([fb, "flash", "misc", misc_wipe], check=True)
subprocess.run([fb, "reboot"], check=True)

print("5. Waiting for phone to format /data in Recovery and boot Sunno OS 1.0 out-of-the-box...")
for i in range(1, 36):
    time.sleep(5)
    out = subprocess.check_output([adb, "devices", "-l"], text=True, stderr=subprocess.STDOUT)
    if "1099738415003670" in out and "device " in out:
        bc = subprocess.check_output([adb, "-s", "1099738415003670", "shell", "getprop", "sys.boot_completed"], text=True).strip()
        print(f"[{i*5}s] Connected! sys.boot_completed={bc}")
        if bc == "1":
            break
    else:
        print(f"[{i*5}s] Formatting /data + booting clean Sunno OS 1.0...")

time.sleep(3)
print("=== OUT-OF-THE-BOX VERIFICATION (READ-ONLY, ZERO ADB PATCHES) ===")
verify_cmd = """
echo "--- Build & Provisioning ---"
getprop ro.build.display.id
getprop ro.sunno.version
settings get global device_provisioned
settings get secure user_setup_complete
echo "--- Refresh Rate & Display Mode ---"
settings get system min_refresh_rate
settings get system peak_refresh_rate
dumpsys display | grep -E "mActiveSfDisplayMode|mDefaultPeakRefreshRate|mDefaultRefreshRate"
echo "--- Built-in WebView Status ---"
dumpsys webviewupdate | grep -E "Current WebView|Any WebView|Valid package"
echo "--- Quick Settings Tiles ---"
settings get secure sysui_qs_tiles
echo "--- Current Focused Window ---"
dumpsys window | grep -E "mCurrentFocus|mFocusedApp"
echo "--- Crashes Since Boot (should be empty!) ---"
logcat -b events -d | grep -E "am_crash|am_anr" || echo "ZERO_CRASHES_OR_ANRS"
"""
res = subprocess.check_output([adb, "-s", "1099738415003670", "shell", verify_cmd], text=True, stderr=subprocess.STDOUT)
print(res)
