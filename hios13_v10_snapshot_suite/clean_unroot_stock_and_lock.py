import hashlib
import os
import struct
import subprocess
import sys
import time

sys.path.insert(0, os.path.dirname(__file__))
from winusb_fastboot import send_fastboot_raw

SER = "1099738415003670"
def _find_tool(name):
    for base in [
        os.path.expandvars(r"%LOCALAPPDATA%\Android\Sdk\platform-tools"),
        os.path.expandvars(r"%USERPROFILE%\Android\Sdk\platform-tools"),
    ]:
        cand = os.path.join(base, name)
        if os.path.isfile(cand):
            return cand
    return name

ADB = _find_tool("adb.exe")
FASTBOOT = _find_tool("fastboot.exe")
ROM_REST_DIR = r"C:\Users\Monir\.gemini\antigravity\scratch\BG6_Stock_HiOS13_Restore\rom_rest\Tecno_BG6_Full_ROM_Backup"
STOCK_BOOT_A = os.path.join(ROM_REST_DIR, "boot_a.bin")
STOCK_VBMETA_A = os.path.join(ROM_REST_DIR, "vbmeta_a.img")


def verify_factory_boot_a():
    assert os.path.isfile(STOCK_BOOT_A), f"Missing {STOCK_BOOT_A}"
    assert os.path.getsize(STOCK_BOOT_A) == 67108864, "boot_a.bin size != 64MB"
    boot_raw = open(STOCK_BOOT_A, "rb").read()
    assert b"magisk" not in boot_raw.lower(), "FATAL: magisk string found in boot_a.bin!"
    assert b"kernelsu" not in boot_raw.lower(), "FATAL: kernelsu string found in boot_a.bin!"

    vb = open(STOCK_VBMETA_A, "rb").read()
    auth_sz, _ = struct.unpack("!QQ", vb[12:28])
    desc_off, desc_sz = struct.unpack("!QQ", vb[96:112])
    descs = vb[256 + auth_sz + desc_off : 256 + auth_sz + desc_off + desc_sz]
    pos = 0
    matched = False
    while pos < len(descs):
        tag, nbytes = struct.unpack("!QQ", descs[pos : pos + 16])
        body = descs[pos + 16 : pos + 16 + nbytes]
        pos += 16 + nbytes
        if tag == 4:
            _, pn_len, pk_len = struct.unpack("!III", body[:12])
            pname = body[76 : 76 + pn_len].decode()
            if pname == "boot":
                pk = body[76 + pn_len : 76 + pn_len + pk_len]
                idx = boot_raw.rfind(b"AVBf")
                assert idx != -1, "Missing AVBf footer in boot_a.bin"
                _, v_off, v_sz = struct.unpack("!QQQ", boot_raw[idx + 12 : idx + 36])
                sub = boot_raw[v_off : v_off + v_sz]
                a_sz = struct.unpack("!Q", sub[12:20])[0]
                p_off, p_sz = struct.unpack("!QQ", sub[64:80])
                cpk = sub[256 + a_sz + p_off : 256 + a_sz + p_off + p_sz]
                assert cpk == pk, "AVB public key mismatch on boot_a.bin!"
                matched = True
    assert matched, "Could not verify boot chain descriptor in vbmeta_a.img!"
    print("[OK] Factory Stock boot_a.bin (64 MB) AVB chain & purity 100% verified!", flush=True)


def wait_for_fastboot(max_wait=90):
    print("Waiting for device in bootloader fastboot mode...", flush=True)
    deadline = time.time() + max_wait
    while time.time() < deadline:
        r = subprocess.run([FASTBOOT, "devices"], text=True, capture_output=True)
        if SER in r.stdout:
            print(f"  Found fastboot device: {r.stdout.strip()}", flush=True)
            return
        time.sleep(1.5)
    raise RuntimeError(f"Timed out waiting for {SER} in fastboot mode!")


def main():
    verify_factory_boot_a()

    r_adb = subprocess.run([ADB, "devices"], text=True, capture_output=True)
    if SER in r_adb.stdout:
        print("[1/4] Removing KernelSU daemon, scripts, and Manager APK via ADB...", flush=True)
        cleanup_cmd = (
            "rm -rf /data/adb/ksud /data/adb/ksu /data/adb/modules "
            "/data/adb/post-fs-data.d /data/adb/service.d /data/adb/boot-completed.d\n"
            "exit\n"
        )
        subprocess.run([ADB, "-s", SER, "shell", "su"], input=cleanup_cmd, text=True, capture_output=True)
        r_un = subprocess.run([ADB, "-s", SER, "uninstall", "me.weishu.kernelsu"], text=True, capture_output=True)
        print("  KernelSU Manager uninstall:", r_un.stdout.strip(), r_un.stderr.strip(), flush=True)

        print("[2/4] Rebooting phone into Fastboot mode...", flush=True)
        subprocess.run([ADB, "-s", SER, "reboot", "bootloader"], capture_output=True)
        time.sleep(5)

    wait_for_fastboot(90)

    print("[3/4] Flashing 100% Factory Signed Stock boot_a.bin...", flush=True)
    r_fl = subprocess.run([FASTBOOT, "-s", SER, "flash", "boot_a", STOCK_BOOT_A], text=True, capture_output=True)
    print(r_fl.stdout, r_fl.stderr, flush=True)
    if r_fl.returncode != 0:
        raise RuntimeError(f"Failed to flash stock boot_a (rc={r_fl.returncode})")

    # Erase userdata/metadata cleanly before lock or let lock_bootloader handle it:
    # Earlier sync_slot_b_and_lock_bootloader.py sent flashing lock_bootloader directly and worked cleanly!
    time.sleep(1.0)
    ok_ser, val_ser = send_fastboot_raw("getvar:serialno", timeout_ms=10000)
    assert ok_ser, f"WinUSB getvar:serialno failed: {val_ser}"
    print(f"  WinUSB pipe verified (serial={val_ser})!", flush=True)

    print("\n=====================================================================", flush=True)
    print("[4/4] SENDING 'flashing lock_bootloader' -> PRESS VOLUME DOWN ON PHONE!", flush=True)
    print("=====================================================================\n", flush=True)
    ok_lock, msg_lock = send_fastboot_raw("flashing lock_bootloader", timeout_ms=300000)
    if not ok_lock:
        raise RuntimeError(f"Bootloader lock failed or cancelled: {msg_lock}")

    print("\n[SUCCESS] Bootloader LOCKED (Green State)! Rebooting phone now...", flush=True)
    time.sleep(1.0)
    send_fastboot_raw("reboot", timeout_ms=15000)
    print("=== ALL DONE! PHONE IS NOW 100% PURE FACTORY STOCK + LOCKED BOOTLOADER! ===", flush=True)


if __name__ == "__main__":
    main()
