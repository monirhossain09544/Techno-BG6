import zipfile
import struct
import os
import subprocess

apk_in = r"D:\HiOS_UI_Suite\system_ext\app\HiLauncher\HiLauncher.apk"
with zipfile.ZipFile(apk_in, 'r') as z:
    manifest = z.read("AndroidManifest.xml")

old_s = "com.transsion.dataservice.permission.WRITE"
new_s = "android.permission.WRITE_SECURE_SETTINGS"
# In UTF-16LE binary XML: 2-byte char length prefix followed by UTF-16LE bytes and \x00\x00
old_u16 = struct.pack("<H", len(old_s)) + old_s.encode("utf-16le") + b"\x00\x00"
# Pad new_u16 with trailing \x00\x00 so total chunk size and all string offsets remain 100% identical!
new_u16 = struct.pack("<H", len(new_s)) + new_s.encode("utf-16le") + b"\x00\x00"
new_u16_padded = new_u16 + b"\x00" * (len(old_u16) - len(new_u16))

assert len(old_u16) == len(new_u16_padded)
assert old_u16 in manifest, "UTF-16LE string not found in AndroidManifest.xml"
print("Found exact UTF-16LE string in AndroidManifest.xml! Patching in-place...")

manifest_patched = manifest.replace(old_u16, new_u16_padded, 1)

signed_dir = r"D:\HiOS_UI_Suite\signed_platform"
os.makedirs(signed_dir, exist_ok=True)
hilauncher_unsigned = os.path.join(signed_dir, "HiLauncher_unsigned.apk")
hilauncher_aligned = os.path.join(signed_dir, "HiLauncher_aligned.apk")
hilauncher_signed = os.path.join(signed_dir, "HiLauncher.apk")

with zipfile.ZipFile(apk_in, 'r') as zin, zipfile.ZipFile(hilauncher_unsigned, 'w') as zout:
    for item in zin.infolist():
        if item.filename.startswith("META-INF/"):
            continue
        data = zin.read(item.filename)
        if item.filename == "AndroidManifest.xml":
            data = manifest_patched
        zout.writestr(item, data)

zipalign = r"C:\Users\Monir\AppData\Local\Android\Sdk\build-tools\35.0.0\zipalign.exe"
apksigner = r"C:\Users\Monir\AppData\Local\Android\Sdk\build-tools\35.0.0\apksigner.bat"
pk8 = r"D:\HiOS_UI_Suite\platform.pk8"
pem = r"D:\HiOS_UI_Suite\platform.x509.pem"

subprocess.run([zipalign, "-f", "-p", "4", hilauncher_unsigned, hilauncher_aligned], check=True)
subprocess.run([apksigner, "sign", "--key", pk8, "--cert", pem, "--out", hilauncher_signed, hilauncher_aligned], check=True)
print("Successfully patched and platform-signed:", hilauncher_signed)

# Also platform-sign the rest of the HiOS Suite APKs!
other_apks = [
    r"D:\HiOS_UI_Suite\product\priv-app\OSIcon\OSIcon.apk",
    r"D:\HiOS_UI_Suite\system_ext\app\Weather\Weather.apk",
    r"D:\HiOS_UI_Suite\system_ext\app\TranDynamicBar\TranDynamicBar.apk",
    r"D:\HiOS_UI_Suite\system_ext\app\TRWallpaperPicker\TRWallpaperPicker.apk",
    r"D:\HiOS_UI_Suite\system_ext\app\AiGallery\AiGallery.apk",
    r"D:\HiOS_UI_Suite\system_ext\app\TranssionDeskClock\TranssionDeskClock.apk",
    r"D:\HiOS_UI_Suite\system_ext\app\TranssionCalculator\TranssionCalculator.apk",
    r"D:\HiOS_UI_Suite\system_ext\app\TranssionNote\TranssionNote.apk",
    r"D:\HiOS_UI_Suite\system_ext\app\TranssionSoundRecorder\TranssionSoundRecorder.apk",
    r"D:\HiOS_UI_Suite\system_ext\priv-app\SmartCaller\SmartCaller.apk",
]

for apk in other_apks:
    bname = os.path.basename(apk)
    out_signed = os.path.join(signed_dir, bname)
    subprocess.run([apksigner, "sign", "--key", pk8, "--cert", pem, "--out", out_signed, apk], check=True)
    print("Platform-signed:", out_signed)
