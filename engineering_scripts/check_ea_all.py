import paramiko

REMOTE_PY = r'''import subprocess, os, shutil

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
SRC_APK = "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
BASE1 = f"{WORK}/smali_classes.dex"
BASE2 = f"{WORK}/smali_classes2.dex"

# Restore clean smali files we touch from fresh baksmali if backup doesn't exist
for rel in [
    f"{BASE1}/com/android/contacts/list/e$a.smali",
    f"{BASE2}/gt2.smali",
    f"{BASE2}/p33.smali",
    f"{BASE2}/a32.smali",
    f"{BASE2}/mc0.smali",
    f"{BASE2}/xp0.smali",
]:
    bak = rel + ".orig"
    if not os.path.exists(bak):
        shutil.copy2(rel, bak)
    else:
        shutil.copy2(bak, rel)

# 1. Inspect rest of e$a.smali to ensure all projections are clean
ea_path = f"{BASE1}/com/android/contacts/list/e$a.smali"
ea_txt = open(ea_path).read()
print("e$a.smali Lsz;->a count:", ea_txt.count("Lsz;->a:Z"))
lines_ea = ea_txt.splitlines(True)
for idx, l in enumerate(lines_ea):
    if "Lsz;->a:Z" in l:
        print(f"e$a Lsz at {idx+1}:")
        print("".join(f"{k+1}: {lines_ea[k]}" for k in range(idx, min(len(lines_ea), idx+60))))

# Replace every `if-eqz v1, :cond_XX` .. `:goto_YY` block in e$a.smali where sync1/is_sdn_contact is added!
# Let's check exact blocks first:
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
