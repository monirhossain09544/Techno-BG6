import subprocess
import time
import os

SYS_IMG = r"D:\sunno_v2_system.img"
LOGO_IMG = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\logo_sunno.img"

def get_adb():
    out = subprocess.check_output(["adb", "devices"], text=True)
    for line in out.splitlines()[1:]:
        if "\tdevice" in line:
            return line.split("\t")[0]
    return None

def get_fastboot():
    out = subprocess.check_output(["fastboot", "devices"], text=True)
    for line in out.splitlines():
        if "\tfastboot" in line:
            return line.split("\t")[0]
    return None

def flash_logo_via_adb():
    print("Flashing custom Sunno OS boot splash (logo_sunno.img) via ADB...")
    subprocess.run(["adb", "push", LOGO_IMG, "/data/local/tmp/logo_sunno.img"], check=True)
    subprocess.run([
        "adb", "shell",
        "for p in /dev/block/by-name/logo /dev/block/by-name/logo_a; do if [ -e $p ]; then dd if=/data/local/tmp/logo_sunno.img of=$p bs=1048576; fi; done; rm -f /data/local/tmp/logo_sunno.img; sync"
    ], check=True)
    print("Flashed logo_sunno.img successfully!")

print("Waiting for phone (1099738415003670) on ADB or Fastboot...")
while True:
    adb_dev = get_adb()
    fb_dev = get_fastboot()
    if adb_dev:
        print(f"Found phone in ADB mode: {adb_dev}")
        flash_logo_via_adb()
        print("Rebooting into fastbootd to flash Sunno OS 2.0 system_a...")
        subprocess.run(["adb", "reboot", "fastboot"], check=True)
        while not get_fastboot():
            time.sleep(1)
        print("Phone is in fastbootd! Flashing system_a...")
        subprocess.run(["fastboot", "flash", "system_a", SYS_IMG], check=True)
        print("Rebooting into Sunno OS 2.0!")
        subprocess.run(["fastboot", "reboot"], check=True)
        break
    elif fb_dev:
        print(f"Found phone in Fastboot mode: {fb_dev}")
        subprocess.run(["fastboot", "flash", "system_a", SYS_IMG], check=True)
        print("Rebooting into Sunno OS 2.0!")
        subprocess.run(["fastboot", "reboot"], check=True)
        print("Waiting for ADB to flash custom boot splash logo_sunno.img...")
        while not get_adb():
            time.sleep(2)
        flash_logo_via_adb()
        break
    time.sleep(1.5)

print("ALL FLASHING COMPLETED SUCCESSFULLY!")
