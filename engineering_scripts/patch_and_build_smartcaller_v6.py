import paramiko

REMOTE_PY = r'''import subprocess, os, shutil, re

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
SRC_APK = "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
BASE1 = f"{WORK}/smali_classes.dex"
BASE2 = f"{WORK}/smali_classes2.dex"

# Find hp.smali
hp_path = None
for b in [BASE1, BASE2]:
    if os.path.exists(f"{b}/hp.smali"):
        hp_path = f"{b}/hp.smali"

targets = [
    f"{BASE1}/com/android/contacts/list/e$a.smali",
    f"{BASE2}/gt2.smali",
    f"{BASE2}/p33.smali",
    f"{BASE2}/a32.smali",
    f"{BASE2}/mc0.smali",
    f"{BASE2}/xp0.smali",
]
if hp_path:
    targets.append(hp_path)

for rel in targets:
    bak = rel + ".orig"
    if not os.path.exists(bak):
        shutil.copy2(rel, bak)
    else:
        shutil.copy2(bak, rel)

# 1. Patch e$a.smali: replace every `if-eqz v1, :cond_XX ... goto :goto_YY` with `goto :goto_YY`
ea_path = f"{BASE1}/com/android/contacts/list/e$a.smali"
ea = open(ea_path).read()
pattern_ea = re.compile(r'if-eqz v1, (:cond_[0-9a-f]+)(.*?goto (:goto_[0-9a-f]+))', re.DOTALL)
matches = pattern_ea.findall(ea)
print("e$a matches found:", [(m[0], m[2]) for m in matches])
def repl_ea(m):
    goto_lbl = m.group(3)
    return f"goto {goto_lbl}\n" + m.group(2)
ea_new = pattern_ea.sub(repl_ea, ea)
open(ea_path, "w").write(ea_new)

# 2. Patch gt2.smali: skip all 4 `if-eqz <reg>, :cond_XX` right after `Loy1;->f()Z`
gt2_path = f"{BASE2}/gt2.smali"
gt2 = open(gt2_path).read()
pattern_gt2 = re.compile(r'(invoke-static \{\}, Loy1;->f\(\)Z\s+(?:\.line \d+\s+)*move-result ([vp]\d+)\s+(?:const/4 v1, -0x1\s+)?(?:\.line \d+\s+)*)if-eqz \2, (:cond_[0-9a-f]+)')
print("gt2 matches found:", pattern_gt2.findall(gt2))
gt2_new = pattern_gt2.sub(r'\1goto \3', gt2)
open(gt2_path, "w").write(gt2_new)

# 3. Patch p33.smali: set default WhatsApp Business package name too
p33_path = f"{BASE2}/p33.smali"
p33 = open(p33_path).read()
p33 = p33.replace('.field public static b:Ljava/lang/String; = ""', '.field public static b:Ljava/lang/String; = "com.whatsapp.w4b"')
open(p33_path, "w").write(p33)

# 4. Patch a32.smali: in `a(Ljava/lang/String;Landroid/content/Context;)Z`, if `"com.whatsapp".equals(p0)`, return 1 (true) so green WhatsApp button always appears!
a32_path = f"{BASE2}/a32.smali"
a32 = open(a32_path).read()
old_a32_head = """.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7"""
new_a32_head = """.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7

    const-string v0, "com.whatsapp"
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_real_check
    const/4 v0, 0x1
    return v0
    :cond_real_check"""
assert old_a32_head in a32, "a32 head not found!"
a32 = a32.replace(old_a32_head, new_a32_head, 1)
open(a32_path, "w").write(a32)

# 5. Patch hp.smali (or mc0.smali): inspect hp.smali b(Context, String)Z
if hp_path:
    hp = open(hp_path).read()
    print("hp.smali preview:\n", hp[:1200])
    # Also patch mc0.smali directly around 17702 and 373!

mc0_path = f"{BASE2}/mc0.smali"
mc0 = open(mc0_path).read()
# Enable Call Recordings row in DetailViewBinder (Lmc0;->Q = true)
old_mc0_rec = """    :goto_7b
    sput-boolean v0, Lmc0;->Q:Z"""
new_mc0_rec = """    :goto_7b
    const/4 v0, 0x1
    sput-boolean v0, Lmc0;->Q:Z"""
assert old_mc0_rec in mc0, "mc0_rec not found!"
mc0 = mc0.replace(old_mc0_rec, new_mc0_rec, 1)

# Enable WhatsApp > row in DetailViewBinder unconditionally when checking "com.whatsapp"
old_mc0_wa = """    const-string v0, "com.whatsapp"

    .line 117
    .line 118
    invoke-static {p1, v0}, Lhp;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result p1"""
new_mc0_wa = """    const-string v0, "com.whatsapp"

    .line 117
    .line 118
    const/4 p1, 0x1"""
assert old_mc0_wa in mc0, "mc0_wa not found!"
mc0 = mc0.replace(old_mc0_wa, new_mc0_wa, 1)
open(mc0_path, "w").write(mc0)

# 6. Patch xp0.smali: make A()Z (Call Recording support) and y()Z (WhatsApp support) return true by default
xp0_path = f"{BASE2}/xp0.smali"
xp0 = open(xp0_path).read()
old_xp0_a = """.method public static A()Z
    .registers 3"""
new_xp0_a = """.method public static A()Z
    .registers 3
    const/4 v0, 0x1
    return v0"""
assert old_xp0_a in xp0, "xp0 A()Z not found!"
xp0 = xp0.replace(old_xp0_a, new_xp0_a, 1)
open(xp0_path, "w").write(xp0)

print("All smali patches applied! Reassembling DEX files...")
os.makedirs(f"{WORK}/out_dex", exist_ok=True)
subprocess.check_call(f"/usr/bin/smali a -a 34 {BASE1} -o {WORK}/out_dex/classes.dex", shell=True)
subprocess.check_call(f"/usr/bin/smali a -a 34 {BASE2} -o {WORK}/out_dex/classes2.dex", shell=True)

UNALIGNED = f"{WORK}/SmartCaller_unaligned.apk"
ALIGNED = f"{WORK}/SmartCaller_aligned.apk"
SIGNED = f"{WORK}/SmartCaller_V6_A16.apk"
shutil.copy2(SRC_APK, UNALIGNED)
subprocess.check_call(f"cd {WORK}/out_dex && zip -q -0 {UNALIGNED} classes.dex classes2.dex", shell=True)

zipalign = subprocess.check_output("which zipalign || find /nvme0n1-disk/shunno_os/prebuilts -name zipalign | head -n 1", shell=True).decode().strip()
apksigner = subprocess.check_output("which apksigner || find /nvme0n1-disk/shunno_os/out /nvme0n1-disk/shunno_os/prebuilts -name apksigner 2>/dev/null | head -n 1", shell=True).decode().strip()
pk8 = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8"
pem = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem"

subprocess.check_call(f"{zipalign} -f -p 4 {UNALIGNED} {ALIGNED}", shell=True)
subprocess.check_call(f"{apksigner} sign --key {pk8} --cert {pem} --out {SIGNED} {ALIGNED}", shell=True)
print("SIGNED APK READY:", SIGNED, os.path.getsize(SIGNED))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=180)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
err = stderr.read().decode()
if err:
    print("STDERR:", err)
c.close()
