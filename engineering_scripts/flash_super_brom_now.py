import subprocess
import os
import time

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
os.chdir(BACKUP_DIR)

cmd = [
    os.path.join(BACKUP_DIR, "spd_dump.exe"),
    "--wait", "300",
    "exec_addr", "0x65015f08",
    "fdl", "fdl1-dl.bin", "0x65000800",
    "fdl", "fdl2-dl.bin", "0x9efffe00",
    "exec",
    "w", "misc", "misc.img",
    "w", "vbmeta_a", "vbmeta_a.img",
    "w", "vbmeta_system_a", "vbmeta_system_a.img",
    "w", "super", "super.img",
    "reset"
]

attempt = 0
while True:
    attempt += 1
    print(f"[Attempt {attempt}] === Waiting for phone in BROM mode to flash full super.img ===", flush=True)
    proc = subprocess.Popen(
        cmd,
        cwd=BACKUP_DIR,
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        bufsize=1
    )

    out_lines = []
    for line in proc.stdout:
        print(line, end="", flush=True)
        out_lines.append(line)
        if "Press any key to continue" in line:
            try:
                proc.stdin.write("\n")
                proc.stdin.flush()
            except Exception:
                pass
            proc.kill()
            break

    proc.wait()
    full_out = "".join(out_lines)
    if "Write Part Done: super" in full_out:
        print("\n=== FULL SUPER_IMG BROM FLASH 100% COMPLETE! ===", flush=True)
        break
    time.sleep(0.5)
