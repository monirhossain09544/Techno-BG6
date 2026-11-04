import paramiko, os

REMOTE_PY = r'''import subprocess, os, shutil, re

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
SRC_APK = "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
BASE2 = f"{WORK}/smali_classes2.dex"

# Re-patch gt2.smali so all 4 Loy1.f() branches are skipped
shutil.copy2(f"{BASE2}/gt2.smali.orig", f"{BASE2}/gt2.smali")
gt2 = open(f"{BASE2}/gt2.smali").read()
pattern_gt2 = re.compile(r'(invoke-static \{\}, Loy1;->f\(\)Z[\s\.line0-9]+move-result ([vp]\d+)(?:[\s\.line0-9]+const/4 v1, -0x1)?[\s\.line0-9]+)if-eqz \2, (:cond_[0-9a-f]+)')
m_gt2 = pattern_gt2.findall(gt2)
print("gt2 matches:", len(m_gt2))
assert len(m_gt2) == 4, f"Expected 4 gt2 matches, got {len(m_gt2)}"
gt2 = pattern_gt2.sub(r'\1goto \3', gt2)
open(f"{BASE2}/gt2.smali", "w").write(gt2)

# Patch hp.smali so Lhp;->b:Z (ro.os.all_call_record) is also true
hp_path = f"{BASE2}/hp.smali" if os.path.exists(f"{BASE2}/hp.smali") else f"{WORK}/smali_classes.dex/hp.smali"
shutil.copy2(hp_path + ".orig", hp_path)
hp = open(hp_path).read()
hp = hp.replace("    sput-boolean v0, Lhp;->b:Z", "    const/4 v0, 0x1\n    sput-boolean v0, Lhp;->b:Z", 1)
open(hp_path, "w").write(hp)

if hp_path.startswith(BASE2):
    subprocess.check_call(f"/usr/bin/smali a -a 34 {BASE2} -o {WORK}/out_dex/classes2.dex", shell=True)
else:
    subprocess.check_call(f"/usr/bin/smali a -a 34 {WORK}/smali_classes.dex -o {WORK}/out_dex/classes.dex", shell=True)
    subprocess.check_call(f"/usr/bin/smali a -a 34 {BASE2} -o {WORK}/out_dex/classes2.dex", shell=True)

UNALIGNED = f"{WORK}/SmartCaller_unaligned.apk"
ALIGNED = f"{WORK}/SmartCaller_aligned.apk"
SIGNED = f"{WORK}/SmartCaller_V6_A16.apk"
shutil.copy2(SRC_APK, UNALIGNED)
subprocess.check_call(f"cd {WORK}/out_dex && zip -q -0 {UNALIGNED} classes.dex classes2.dex", shell=True)

zipalign = "/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/zipalign"
if not os.path.exists(zipalign):
    zipalign = subprocess.check_output("find /nvme0n1-disk/shunno_os -path '*linux*' -name zipalign | head -n 1", shell=True).decode().strip()

apksigner_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os -name apksigner.jar | head -n 1", shell=True).decode().strip()
pk8 = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8"
pem = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem"

subprocess.check_call(f"{zipalign} -f -p 4 {UNALIGNED} {ALIGNED}", shell=True)
subprocess.check_call(f"java -jar {apksigner_jar} sign --key {pk8} --cert {pem} --out {SIGNED} {ALIGNED}", shell=True)
print("SUCCESS:", SIGNED, os.path.getsize(SIGNED))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=120)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
out = stdout.read().decode()
err = stderr.read().decode()
print(out)
if err:
    print("STDERR:", err)

if "SUCCESS:" in out:
    sftp = c.open_sftp()
    local_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SmartCaller_V6_A16.apk"
    print("Downloading SmartCaller_V6_A16.apk...")
    sftp.get("/nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk", local_apk)
    sftp.close()
    print("Downloaded:", local_apk, os.path.getsize(local_apk))
c.close()
