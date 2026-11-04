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
    "w", "misc", "misc_fastbootd.img",
    "reset"
]

attempt = 0
while True:
    attempt += 1
    print(f"[Attempt {attempt}] Waiting for BROM connection on COM3...", flush=True)
    p = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    out_lines = []
    for line in p.stdout:
        print(line, end="", flush=True)
        out_lines.append(line)
        if "Press any key to continue" in line:
            try:
                p.stdin.write("\n")
                p.stdin.flush()
            except Exception:
                pass
            p.kill()
            break
    p.wait()
    full_out = "".join(out_lines)
    if "WRITE misc" in full_out or "write_part misc" in full_out or "BSL_REP_ACK" in full_out and "reset" in full_out.lower():
        print("BROM_TO_FASTBOOTD_SUCCESS!", flush=True)
        break
    if "FDL2" in full_out and p.returncode == 0:
        print("BROM_TO_FASTBOOTD_SUCCESS!", flush=True)
        break
    time.sleep(0.5)
