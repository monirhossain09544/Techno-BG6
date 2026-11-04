import subprocess
import time
import os

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
ART_DIR = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"
APK = os.path.join(SCRATCH, "Launcher3QuickStep.apk")

print("Installing updated Launcher3QuickStep.apk...")
subprocess.run(["adb", "install", "-r", "-d", APK], check=True)
subprocess.run(["adb", "shell", "am force-stop com.android.launcher3; input keyevent KEYCODE_HOME"], check=True)
time.sleep(2.5)

home_png = os.path.join(ART_DIR, "sunno_v2_home.png")
with open(home_png, "wb") as f:
    subprocess.run(["adb", "exec-out", "screencap", "-p"], stdout=f, check=True)
print("Captured clean Home screenshot:", home_png)

# Swipe up to open the Sunno App Drawer!
subprocess.run(["adb", "shell", "input swipe 360 1250 360 300 180"], check=True)
time.sleep(1.5)
drawer_png = os.path.join(ART_DIR, "sunno_v2_drawer.png")
with open(drawer_png, "wb") as f:
    subprocess.run(["adb", "exec-out", "screencap", "-p"], stdout=f, check=True)
print("Captured App Drawer screenshot:", drawer_png)

# Return to Home screen
subprocess.run(["adb", "shell", "input keyevent KEYCODE_BACK"], check=True)
