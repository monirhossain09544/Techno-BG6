import subprocess
import time
import os

ART_DIR = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"

def sh(cmd):
    return subprocess.check_output(["adb", "shell", cmd], text=True).strip()

print("Waiting for ADB device to come online...")
subprocess.run(["adb", "wait-for-device"], check=True)
print("ADB online! Waiting for sys.boot_completed=1...")
for i in range(90):
    try:
        if sh("getprop sys.boot_completed") == "1":
            print(f"Boot completed in {i+1}s!")
            break
    except Exception:
        pass
    time.sleep(1)

time.sleep(4)
print("=== VERIFYING SUNNO OS 2.0 SYSTEM PROPERTIES & FEATURES ===")
print("ro.config.low_ram:", sh("getprop ro.config.low_ram"))
print("ro.sf.lcd_density:", sh("getprop ro.sf.lcd_density"))
print("ro.surface_flinger.supports_background_blur:", sh("getprop ro.surface_flinger.supports_background_blur"))
print("RAM features:", sh("pm list features | grep ram"))
print("Default browser role:", sh("cmd role get-role-holders android.app.role.BROWSER"))
print("Gesture nav overlay:", sh("cmd overlay list android | grep gestural"))

# Ensure screen is awake & unlocked and at Home Screen
sh("input keyevent KEYCODE_WAKEUP; wm dismiss-keyguard; input keyevent KEYCODE_HOME")
time.sleep(2)

# Reset wallpaper if user data cached old wallpaper
sh("cmd wallpaper clear 2>/dev/null || rm -f /data/system/users/0/wallpaper* 2>/dev/null || true")
time.sleep(1)
sh("input keyevent KEYCODE_HOME")
time.sleep(2)

home_png = os.path.join(ART_DIR, "sunno_v2_home.png")
with open(home_png, "wb") as f:
    subprocess.run(["adb", "exec-out", "screencap", "-p"], stdout=f, check=True)
print("Saved Home screenshot:", home_png)

# Swipe up to open our custom Frosted-Glass App Drawer
sh("input swipe 360 1200 360 300 180")
time.sleep(1.5)
drawer_png = os.path.join(ART_DIR, "sunno_v2_drawer.png")
with open(drawer_png, "wb") as f:
    subprocess.run(["adb", "exec-out", "screencap", "-p"], stdout=f, check=True)
print("Saved App Drawer screenshot:", drawer_png)

# Close drawer and open Frosted-Glass Quick Settings shade
sh("input keyevent KEYCODE_BACK")
time.sleep(1)
sh("cmd statusbar expand-settings")
time.sleep(1.5)
qs_png = os.path.join(ART_DIR, "sunno_v2_qs.png")
with open(qs_png, "wb") as f:
    subprocess.run(["adb", "exec-out", "screencap", "-p"], stdout=f, check=True)
print("Saved Quick Settings screenshot:", qs_png)
sh("cmd statusbar collapse")
