import sys, subprocess, time, re, xml.etree.ElementTree as ET, zlib
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"
local_sc = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SmartCaller_V6_A16.apk"
local_probe = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SimProbe.apk"

def sh(cmd):
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace")
    return (p.stdout + "\n" + p.stderr).strip()

REMOTE_PY = r"""import os, subprocess, shutil

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
SRC_APK = "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
BASE1 = f"{WORK}/smali_classes.dex"

# 1. Check sContactsEntityProjectionMap in ContactsProvider2.java
cp2 = "/nvme0n1-disk/shunno_os/packages/providers/ContactsProvider/src/com/android/providers/contacts/ContactsProvider2.java"
txt_cp2 = open(cp2).read()
idx = txt_cp2.find("sContactsEntityProjectionMap = ProjectionMap.builder()")
print("--- ContactsProvider2 sContactsEntityProjectionMap ---")
print(txt_cp2[idx:idx+3200])

# 2. Restore & cleanly patch tv$b.smali and tv.smali
for p in [f"{BASE1}/tv$b.smali", f"{BASE1}/tv.smali", f"{BASE1}/com/android/contacts/model/RawContact.smali"]:
    bak = p + ".orig"
    if not os.path.exists(bak):
        shutil.copy2(p, bak)
    else:
        shutil.copy2(bak, p)

# In tv$b.smali: remove the Unisoc `:cond_bb` addition of `"is_read_only"` so Ltv$b;->b has pure 63 AOSP columns (0..62)!
tvb_path = f"{BASE1}/tv$b.smali"
tvb = open(tvb_path).read()
old_tvb = '''    :cond_bb
    const-string v1, "is_read_only"

    .line 189
    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z'''
new_tvb = '''    :cond_bb'''
assert old_tvb in tvb, "old_tvb not found!"
tvb = tvb.replace(old_tvb, new_tvb, 1)
open(tvb_path, "w").write(tvb)

# In tv.smali: skip reading column 0x3f when Lsz;->a is false (line 7176)
tv_path = f"{BASE1}/tv.smali"
tv = open(tv_path).read()
old_tv = '''    sget-boolean v1, Lsz;->a:Z

    .line 86
    .line 87
    if-nez v1, :cond_5d

    .line 88
    .line 89
    const/16 v1, 0x3f

    .line 90
    .line 91
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V'''
new_tv = '''    goto :cond_5d'''
assert old_tv in tv, "old_tv not found!"
tv = tv.replace(old_tv, new_tv, 1)
open(tv_path, "w").write(tv)

print("Reassembling classes.dex...")
subprocess.check_call(f"/usr/bin/smali a -a 34 {BASE1} -o {WORK}/out_dex/classes.dex", shell=True)

zipalign = "/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/zipalign"
apksigner = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/apksigner"
pk8 = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8"
pem = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem"

UNALIGNED = f"{WORK}/SmartCaller_unaligned.apk"
ALIGNED = f"{WORK}/SmartCaller_aligned.apk"
SIGNED = f"{WORK}/SmartCaller_V6_A16.apk"
shutil.copy2(SRC_APK, UNALIGNED)
subprocess.check_call(f"cd {WORK}/out_dex && zip -q -0 {UNALIGNED} classes.dex classes2.dex", shell=True)
subprocess.check_call(f"{zipalign} -f -p 4 {UNALIGNED} {ALIGNED}", shell=True)
subprocess.check_call(f"{apksigner} sign --key {pk8} --cert {pem} --out {SIGNED} {ALIGNED}", shell=True)
print("SIGNED SmartCaller_V6_A16.apk:", os.path.getsize(SIGNED))

# 3. Rebuild SimProbe.apk WITHOUT sharedUserId (platform signature alone grants MODIFY_PHONE_STATE & READ_PRIVILEGED_PHONE_STATE!)
PROBE = "/nvme0n1-disk/infinity_x/simprobe_work"
open(f"{PROBE}/AndroidManifest.xml", "w").write('''<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.transsion.simprobe">
    <uses-sdk android:minSdkVersion="29" android:targetSdkVersion="35"/>
    <uses-permission android:name="android.permission.MODIFY_PHONE_STATE"/>
    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
    <uses-permission android:name="android.permission.READ_PRIVILEGED_PHONE_STATE"/>
    <uses-permission android:name="android.permission.READ_CONTACTS"/>
    <uses-permission android:name="android.permission.WRITE_CONTACTS"/>
    <application android:label="SimProbe">
        <receiver android:name=".ProbeReceiver" android:exported="true"/>
    </application>
</manifest>
''')
aapt2 = "/usr/bin/aapt2"
r8_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts/r8 -name r8.jar | head -n 1", shell=True).decode().strip()
android_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts/sdk -name android.jar | sort -V | tail -n 1", shell=True).decode().strip()
subprocess.check_call(f"{aapt2} link -I {android_jar} --manifest {PROBE}/AndroidManifest.xml -o {PROBE}/unaligned.apk {PROBE}/res.zip", shell=True)
subprocess.check_call(f"cd {PROBE} && zip -q -0 unaligned.apk classes.dex", shell=True)
subprocess.check_call(f"{zipalign} -f 4 {PROBE}/unaligned.apk {PROBE}/aligned.apk", shell=True)
subprocess.check_call(f"{apksigner} sign --key {pk8} --cert {pem} --out {PROBE}/SimProbe.apk {PROBE}/aligned.apk", shell=True)
print("REBUILT SimProbe.apk:", os.path.getsize(f"{PROBE}/SimProbe.apk"))
"""

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=180)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode("utf-8", errors="replace"))
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)
    sys.exit(1)

for rp, lp in [
    ("/nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk", local_sc),
    ("/nvme0n1-disk/infinity_x/simprobe_work/SimProbe.apk", local_probe),
]:
    _, so, _ = c.exec_command(f"gzip -1 -c {rp}", timeout=120)
    raw = zlib.decompress(so.read(), 16 + zlib.MAX_WBITS)
    open(lp, "wb").write(raw)
    print(f"Pulled {lp} ({len(raw)} bytes)")
c.close()

print("\n=== INSTALLING FIXED SmartCaller_V6_A16.apk ===")
print(sh(f"{ADB} install -r -d -g {local_sc}"))
sh(f"{ADB} shell appops set com.sh.smart.caller WRITE_SETTINGS allow")

print("\n=== TESTING CONTACT TAP ON LIVE PHONE ===")
sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} shell am force-stop com.sh.smart.caller")
time.sleep(0.5)
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity")
time.sleep(2.0)

sh(f"{ADB} shell uiautomator dump /sdcard/contacts_ui3.xml")
xml_txt = sh(f"{ADB} shell cat /sdcard/contacts_ui3.xml")
tap_xy = None
if "<hierarchy" in xml_txt:
    root = ET.fromstring(xml_txt[xml_txt.index("<hierarchy"):])
    for node in root.iter("node"):
        txt = node.attrib.get("text", "").replace("\u200e", "").strip()
        res = node.attrib.get("resource-id", "")
        b = node.attrib.get("bounds", "")
        if "cliv_name_textview" in res and "My Profile" not in txt and txt:
            m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", b)
            if m:
                x1, y1, x2, y2 = map(int, m.groups())
                tap_xy = (txt, (x1 + x2) // 2, (y1 + y2) // 2)
                break

print("Tapping contact:", tap_xy)
sh(f"{ADB} logcat -c")
if tap_xy:
    sh(f"{ADB} shell input tap {tap_xy[1]} {tap_xy[2]}")
    time.sleep(2.5)
    sh(f"{ADB} shell screencap -p /sdcard/sc_contact_detail_fixed.png")
    sh(r"adb -s 1099738415003670 pull /sdcard/sc_contact_detail_fixed.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_contact_detail_fixed.png")

log = sh(f"{ADB} logcat -d")
for line in log.splitlines():
    low = line.lower()
    if any(k in low for k in ["contactdetail", "error", "exception", "invalid column", "xb0", "displayed com.sh.smart.caller"]):
        print(" ", line[:220])

print("\n=== RUNNING SimProbe FOR ALL SIM RECORDS ===")
print("Install SimProbe:", sh(f"{ADB} install -r -g {local_probe}"))
sh(f"{ADB} logcat -c")
print("Broadcast:", sh(f"{ADB} shell am broadcast -n com.transsion.simprobe/.ProbeReceiver"))
for _ in range(25):
    time.sleep(1.5)
    slogs = sh(f"{ADB} logcat -d -s SIMPROBE:V")
    if "PROBE COMPLETE" in slogs or "Error in probe" in slogs:
        break
print(sh(f"{ADB} logcat -d -s SIMPROBE:V"))
sh(f"{ADB} uninstall com.transsion.simprobe")
