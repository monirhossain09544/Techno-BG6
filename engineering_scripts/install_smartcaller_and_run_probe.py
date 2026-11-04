import sys, subprocess, time, re, xml.etree.ElementTree as ET, zlib
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"
local_sc = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SmartCaller_V6_A16.apk"
local_probe = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SimProbe.apk"

def sh(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace").stdout

print("=== 1. INSTALLING FIXED SmartCaller_V6_A16.apk ON PHONE ===")
print(sh(f"{ADB} install -r -d -g {local_sc}"))
sh(f"{ADB} shell appops set com.sh.smart.caller WRITE_SETTINGS allow")

print("\n=== 2. TESTING CONTACT TAP ON LIVE PHONE ===")
sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} shell am force-stop com.sh.smart.caller")
time.sleep(0.5)
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity")
time.sleep(2.0)

sh(f"{ADB} shell uiautomator dump /sdcard/contacts_ui2.xml")
xml_txt = sh(f"{ADB} shell cat /sdcard/contacts_ui2.xml")
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
    sh(f"{ADB} shell screencap -p /sdcard/sc_contact_detail_test.png")
    sh(r"adb -s 1099738415003670 pull /sdcard/sc_contact_detail_test.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_contact_detail_test.png")

log = sh(f"{ADB} logcat -d")
for line in log.splitlines():
    low = line.lower()
    if any(k in low for k in ["contactdetail", "error", "exception", "invalid column", "xb0", "displayed com.sh.smart.caller"]):
        print(" ", line[:220])

print("\n=== 3. BUILDING & RUNNING SimProbe ===")
REMOTE_PY = r"""import os, subprocess
PROBE = "/nvme0n1-disk/infinity_x/simprobe_work"
r8_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts/r8 -name r8.jar | head -n 1", shell=True).decode().strip()
zipalign = "/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/zipalign"
apksigner = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/apksigner"
android_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts/sdk -name android.jar | sort -V | tail -n 1", shell=True).decode().strip()
pk8 = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8"
pem = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem"

subprocess.check_call(f"java -cp {r8_jar} com.android.tools.r8.D8 --lib {android_jar} --output {PROBE} {PROBE}/classes/com/transsion/simprobe/*.class", shell=True)
subprocess.check_call(f"cd {PROBE} && zip -q -0 unaligned.apk classes.dex", shell=True)
subprocess.check_call(f"{zipalign} -f 4 {PROBE}/unaligned.apk {PROBE}/aligned.apk", shell=True)
subprocess.check_call(f"{apksigner} sign --key {pk8} --cert {pem} --out {PROBE}/SimProbe.apk {PROBE}/aligned.apk", shell=True)
print("BUILT SimProbe.apk:", os.path.getsize(f"{PROBE}/SimProbe.apk"))
"""

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=120)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode("utf-8", errors="replace"))
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)
    sys.exit(1)

_, so, _ = c.exec_command("gzip -1 -c /nvme0n1-disk/infinity_x/simprobe_work/SimProbe.apk", timeout=60)
raw = zlib.decompress(so.read(), 16 + zlib.MAX_WBITS)
open(local_probe, "wb").write(raw)
c.close()

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
