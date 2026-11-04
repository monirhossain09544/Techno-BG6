import subprocess
import sys

SERIAL = "1099738415003670"
IMG = r"D:\hios14_5_system.img"

def run_fb(*args, check=True):
    cmd = ["fastboot", "-s", SERIAL] + list(args)
    print(f"\n>>> Running: {' '.join(cmd)}", flush=True)
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, bufsize=1)
    for line in p.stdout:
        print(line, end="", flush=True)
    p.wait()
    if check and p.returncode != 0:
        raise SystemExit(f"Command failed with exit code {p.returncode}")
    return p.returncode

# Ensure unused logical partitions are deleted so super has plenty of room
for part in ["product_a", "system_ext_a", "system_b", "vendor_b", "product_b", "system_ext_b"]:
    run_fb("delete-logical-partition", part, check=False)

# Flash Official TECNO HiOS 14.5 system image
run_fb("flash", "system_a", IMG, check=True)

# Clean userdata & metadata for clean Transsion platform certificate reconciliation
run_fb("-w", check=False)
run_fb("erase", "userdata", check=False)
run_fb("erase", "metadata", check=False)

# Reboot into Official TECNO HiOS 14.5!
run_fb("reboot", check=True)
print("\nFLASH_HIOS14_5_COMPLETE_AND_REBOOTING!", flush=True)
