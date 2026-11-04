import subprocess
import time
import os
import shutil

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
ART_DIR = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"
APK = os.path.join(SCRATCH, "Launcher3QuickStep.apk")

shutil.copy2(
    os.path.join(SCRATCH, "sunno_boot_splash_preview.png"),
    os.path.join(ART_DIR, "sunno_boot_splash_preview.png")
)
shutil.copy2(
    os.path.join(SCRATCH, "sunno_default_wallpaper.png"),
    os.path.join(ART_DIR, "sunno_default_wallpaper.png")
)
print("Copied boot splash and wallpaper previews to artifact directory!")
