import zipfile, subprocess

apk = r"C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root\Magisk-v30.7.apk"
out_bin = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\resetprop_phh"

with zipfile.ZipFile(apk) as z:
    for name in z.namelist():
        if "magisk" in name and name.endswith(".so") and "arm64" in name:
            print("Found in Magisk APK:", name)
    data = z.read("lib/arm64-v8a/libmagisk.so")
    with open(out_bin, "wb") as f:
        f.write(data)

print(f"Extracted resetprop_phh ({len(data):,} bytes)")
subprocess.run(["adb", "-s", "1099738415003670", "push", out_bin, "/data/local/tmp/resetprop_phh"], check=True)

cmd = """
chmod 755 /data/local/tmp/resetprop_phh
ln -sf /data/local/tmp/resetprop_phh /data/local/tmp/resetprop
/data/local/tmp/resetprop ro.config.low_ram false
sed 's/ro.config.low_ram=true/ro.config.low_ram=false/g' /vendor/build.prop > /data/local/tmp/vendor_build.prop
chmod 644 /data/local/tmp/vendor_build.prop
chcon u:object_r:vendor_file:s0 /data/local/tmp/vendor_build.prop || true
mount -o bind /data/local/tmp/vendor_build.prop /vendor/build.prop
echo "=== Verifying /vendor/build.prop and getprop ro.config.low_ram ==="
grep low_ram /vendor/build.prop
getprop ro.config.low_ram
"""
res = subprocess.run(["adb", "-s", "1099738415003670", "shell", cmd], capture_output=True, text=True)
print(res.stdout)
print(res.stderr)
