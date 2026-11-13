import json
import os
import struct
import subprocess
import sys
import time

SER = "1099738415003670"
SNAP_DIR = os.path.dirname(os.path.abspath(__file__))
APK_DIR = os.path.join(SNAP_DIR, "apks")
DATA_DIR = os.path.join(SNAP_DIR, "app_data")
META_DIR = os.path.join(SNAP_DIR, "meta")

def _find_sdk_tool(exe_name):
    for p in [
        os.path.expandvars(rf"%LOCALAPPDATA%\Android\Sdk\platform-tools\{exe_name}"),
        os.path.expandvars(rf"%USERPROFILE%\Android\Sdk\platform-tools\{exe_name}"),
    ]:
        if os.path.isfile(p):
            return p
    return exe_name.replace(".exe", "")

ADB = _find_sdk_tool("adb.exe")
FASTBOOT = _find_sdk_tool("fastboot.exe")

ROOT_TOOLS_DIR = r"C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root"
V10_BOOT = r"C:\Users\Monir\Documents\deepseek-harness\default-workspace\tecno_bg6_kernel\bg6_boot_a_v10_ksu_avbf.img"
V9_BOOT = V10_BOOT if os.path.isfile(V10_BOOT) else r"C:\Users\Monir\Documents\deepseek-harness\default-workspace\tecno_bg6_kernel\bg6_boot_a_v9_ksu_avbf.img"


def wait_adb_boot_completed(timeout_s=300):
    print("Waiting for Android OS + USB Debugging (ADB)...", flush=True)
    deadline = time.time() + timeout_s
    while time.time() < deadline:
        r = subprocess.run([ADB, "devices"], capture_output=True, text=True)
        if f"{SER}\tdevice" in r.stdout:
            rb = subprocess.run(
                [ADB, "-s", SER, "shell", "getprop", "sys.boot_completed"],
                capture_output=True,
                text=True,
            )
            if rb.stdout.strip() == "1":
                print("  ADB connected and boot completed!", flush=True)
                return True
        time.sleep(2.5)
    return False


def wait_fastboot(timeout_s=90):
    print("Waiting for Fastboot mode...", flush=True)
    deadline = time.time() + timeout_s
    while time.time() < deadline:
        r = subprocess.run([FASTBOOT, "devices"], capture_output=True, text=True)
        if SER in r.stdout:
            print("  Fastboot device ready:", r.stdout.strip(), flush=True)
            return True
        time.sleep(1.5)
    return False


def su_cmd(script_text):
    r = subprocess.run(
        [ADB, "-s", SER, "shell", "su"],
        input=script_text,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    if r.returncode != 0:
        raise RuntimeError(f"su command failed ({r.returncode}): {r.stderr}\n{r.stdout}")
    return r.stdout


def push_file(local_path, remote_path):
    r = subprocess.run(
        [ADB, "-s", SER, "push", local_path, remote_path],
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    if r.returncode != 0:
        raise RuntimeError(f"adb push failed for {local_path}: {r.stdout} {r.stderr}")


def unlock_via_brom_if_locked():
    print("\n=== [STEP 1/6] CHECKING BOOTLOADER & UNLOCKING IF NEEDED ===", flush=True)
    r_fb = subprocess.run([FASTBOOT, "devices"], capture_output=True, text=True)
    if SER not in r_fb.stdout:
        print("Rebooting into BROM AutoDloader to unlock bootloader...", flush=True)
        spd_exe = os.path.join(ROOT_TOOLS_DIR, "spd_dump.exe")
        spd_cmd = [
            spd_exe,
            "--wait",
            "90",
            "fdl",
            "fdl1-sign.bin",
            "0x65000800",
            "fdl",
            "fdl2-sign.bin",
            "0x9efffe00",
            "exec",
            "wof",
            "miscdata",
            "8192",
            "m.bin",
            "reboot-fastboot",
        ]
        spd_proc = subprocess.Popen(
            spd_cmd,
            cwd=ROOT_TOOLS_DIR,
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            bufsize=1,
            encoding="utf-8",
            errors="replace",
        )
        time.sleep(1.5)
        subprocess.run([ADB, "-s", SER, "reboot", "autodloader"], check=False)
        for line in spd_proc.stdout:
            print("  [spd]", line, end="", flush=True)
            if "Press any key" in line:
                try:
                    spd_proc.stdin.write("\n")
                    spd_proc.stdin.flush()
                except Exception:
                    pass
                break
        spd_proc.wait(timeout=15)

    if not wait_fastboot(90):
        raise RuntimeError("Could not detect phone in Fastboot mode!")

    print("\n=== [STEP 2/6] FLASHING GOLDEN V9 KERNELSU BOOT IMAGE ===", flush=True)
    assert os.path.isfile(V9_BOOT) and os.path.getsize(V9_BOOT) == 67108864
    subprocess.run([FASTBOOT, "-s", SER, "flash", "boot_a", V9_BOOT], check=True)
    subprocess.run([FASTBOOT, "-s", SER, "reboot"], check=True)
    print(
        "\n>>> NOTE: If Android Recovery asks for 'Factory data reset' (due to Lock->Unlock), tap Factory data reset,",
        flush=True,
    )
    print(
        ">>> complete basic setup to Home screen, and enable Developer Options -> USB Debugging! Waiting automatically...",
        flush=True,
    )
    if not wait_adb_boot_completed(900):
        raise RuntimeError("Timed out waiting for ADB after boot!")


def install_all_apks():
    print("\n=== [STEP 3/6] INSTALLING KERNELSU MANAGER & ALL SAVED APKS ===", flush=True)
    manifest = json.load(open(os.path.join(META_DIR, "apk_manifest.json"), "r", encoding="utf-8"))
    # Install KernelSU Manager first so we can grant shell root momentarily if needed
    ordered_pkgs = ["me.weishu.kernelsu"] + [p for p in manifest.keys() if p != "me.weishu.kernelsu"]
    for pkg in ordered_pkgs:
        if pkg not in manifest or pkg == "com.android.cli.interact.instrumentation":
            continue
        files = manifest[pkg]
        pdir = os.path.join(APK_DIR, pkg)
        apks = [os.path.join(pdir, x["name"]) for x in files]
        print(f"  Installing {pkg} ({len(apks)} APK(s))...", flush=True)
        cmd = [ADB, "-s", SER, "install-multiple", "-r", "-d", *apks] if len(apks) > 1 else [ADB, "-s", SER, "install", "-r", "-d", apks[0]]
        r = subprocess.run(cmd, capture_output=True, text=True)
        print(f"    -> {r.stdout.strip()} {r.stderr.strip()}", flush=True)


def ensure_shell_root():
    r = subprocess.run([ADB, "-s", SER, "shell", "su"], input="id\n", capture_output=True, text=True)
    if r.returncode == 0 and "uid=0" in r.stdout:
        print("  ADB shell already has root (uid=0)!", flush=True)
        return
    print("\n>>> ACTION ON PHONE: Open KernelSU -> SuperUser -> Shell -> Turn ON SuperUser once!", flush=True)
    subprocess.run([ADB, "-s", SER, "shell", "monkey", "-p", "me.weishu.kernelsu", "-c", "android.intent.category.LAUNCHER", "1"], capture_output=True)
    while True:
        r = subprocess.run([ADB, "-s", SER, "shell", "su"], input="id\n", capture_output=True, text=True)
        if r.returncode == 0 and "uid=0" in r.stdout:
            print("  Root access confirmed!", flush=True)
            return
        time.sleep(2.5)


def patch_allowlist_uids(raw_allowlist, new_uid_map):
    magic, ver = struct.unpack("<II", raw_allowlist[:8])
    assert magic == 0x7F4B5355 and ver == 3, "Unexpected allowlist header"
    body = bytearray(raw_allowlist[8:])
    rec_sz = 776
    assert len(body) % rec_sz == 0, f"Unexpected allowlist body length {len(body)}"
    for off in range(0, len(body), rec_sz):
        key_raw = bytes(body[off + 4 : off + 260])
        pkg = key_raw.split(b"\x00", 1)[0].decode("utf-8", errors="ignore")
        old_uid = struct.unpack_from("<i", body, off + 260)[0]
        if pkg in new_uid_map:
            new_uid = new_uid_map[pkg]
            struct.pack_into("<i", body, off + 260, new_uid)
            print(f"  Remapped allowlist UID for {pkg}: {old_uid} -> {new_uid}", flush=True)
    return raw_allowlist[:8] + bytes(body)


def restore_data_adb_sdcard_and_appdata():
    print("\n=== [STEP 4/6] RESTORING /data/adb, MODULES IMAGE & /sdcard ===", flush=True)
    su_cmd("mkdir -p /data/local/tmp/restore_stage && chmod 777 /data/local/tmp/restore_stage")

    for fn in ["data_adb_host.tar.gz", "data_adb_modules_tree.tar.gz", "sdcard_full.tar.gz"]:
        print(f"  Pushing {fn}...", flush=True)
        push_file(os.path.join(SNAP_DIR, fn), f"/data/local/tmp/restore_stage/{fn}")

    su_cmd(
        """
mkdir -p /data/adb
chmod 700 /data/adb
chcon u:object_r:adb_data_file:s0 /data/adb
/system/bin/tar --selinux -xzpf /data/local/tmp/restore_stage/data_adb_host.tar.gz -C /data/adb
mkdir -p /data/adb/modules /data/adb/ksu

# Unmount if already mounted
umount /data/adb/modules 2>/dev/null || true
rm -f /data/adb/ksu/modules.img
truncate -s 1099511627776 /data/adb/ksu/modules.img
/system/bin/mke2fs -t ext4 -O ^has_journal -F /data/adb/ksu/modules.img
chcon u:object_r:adb_data_file:s0 /data/adb/ksu/modules.img
chmod 644 /data/adb/ksu/modules.img

mount -t ext4 -o loop,rw,seclabel /data/adb/ksu/modules.img /data/adb/modules
/system/bin/tar --selinux -xzpf /data/local/tmp/restore_stage/data_adb_modules_tree.tar.gz -C /data/adb/modules
chcon -R u:object_r:system_file:s0 /data/adb/modules
sync
umount /data/adb/modules

/system/bin/tar -xzpf /data/local/tmp/restore_stage/sdcard_full.tar.gz -C /data/media/0
chown -R media_rw:media_rw /data/media/0 2>/dev/null || true
restorecon -RF /data/media/0 2>/dev/null || true
rm -f /data/local/tmp/restore_stage/*.tar.gz
"""
    )

    print("\n=== [STEP 5/6] RESTORING APP DATA & REMAPPING NEW PACKAGE UIDS ===", flush=True)
    pkg_list_txt = su_cmd("cat /data/system/packages.list")
    new_uid_map = {"com.android.shell": 2000}
    for ln in pkg_list_txt.splitlines():
        parts = ln.split()
        if len(parts) >= 2 and parts[1].isdigit():
            new_uid_map[parts[0]] = int(parts[1])

    for fn in sorted(os.listdir(DATA_DIR)):
        if not fn.endswith(".tar.gz"):
            continue
        if fn.endswith("_ce.tar.gz"):
            pkg = fn[: -len("_ce.tar.gz")]
            target_base = f"/data/data/{pkg}"
        elif fn.endswith("_de.tar.gz"):
            pkg = fn[: -len("_de.tar.gz")]
            target_base = f"/data/user_de/0/{pkg}"
        else:
            continue
        if pkg not in new_uid_map:
            continue
        uid = new_uid_map[pkg]
        push_file(os.path.join(DATA_DIR, fn), f"/data/local/tmp/restore_stage/{fn}")
        su_cmd(
            f"""
am force-stop {pkg} 2>/dev/null || true
mkdir -p {target_base}
/system/bin/tar -xzpf /data/local/tmp/restore_stage/{fn} -C {target_base}
chown -R {uid}:{uid} {target_base}
chown -R {uid}:{uid}_cache {target_base}/cache {target_base}/code_cache 2>/dev/null || true
restorecon -RF {target_base} 2>/dev/null || true
rm -f /data/local/tmp/restore_stage/{fn}
"""
        )
        print(f"  Restored {target_base} (uid={uid})", flush=True)

    # Remap and write .allowlist last so all UIDs match installed packages
    raw_al = open(os.path.join(META_DIR, "allowlist.bin"), "rb").read()
    patched_al = patch_allowlist_uids(raw_al, new_uid_map)
    patched_local = os.path.join(META_DIR, "allowlist_patched.bin")
    with open(patched_local, "wb") as f:
        f.write(patched_al)
    push_file(patched_local, "/data/local/tmp/restore_stage/allowlist.bin")
    su_cmd(
        """
cp -f /data/local/tmp/restore_stage/allowlist.bin /data/adb/ksu/.allowlist
chmod 644 /data/adb/ksu/.allowlist
chcon u:object_r:adb_data_file:s0 /data/adb/ksu/.allowlist
rm -rf /data/local/tmp/restore_stage
sync
"""
    )


def main():
    r_adb = subprocess.run([ADB, "devices"], capture_output=True, text=True)
    need_unlock = True
    if f"{SER}\tdevice" in r_adb.stdout:
        rk = subprocess.run([ADB, "-s", SER, "shell", "uname", "-r"], capture_output=True, text=True)
        rl = subprocess.run([ADB, "-s", SER, "shell", "getprop", "ro.boot.verifiedbootstate"], capture_output=True, text=True)
        if rl.stdout.strip() == "orange":
            # Already unlocked! Check if v9 kernel is running
            r_su = subprocess.run([ADB, "-s", SER, "shell", "su"], input="id\n", capture_output=True, text=True)
            if r_su.returncode == 0 and "uid=0" in r_su.stdout:
                need_unlock = False

    if need_unlock:
        unlock_via_brom_if_locked()

    install_all_apks()
    ensure_shell_root()
    restore_data_adb_sdcard_and_appdata()

    print("\n=== [STEP 6/6] FINAL REBOOT TO ACTIVATE ALL MODULES & SERVICES ===", flush=True)
    subprocess.run([ADB, "-s", SER, "reboot"], check=False)
    print("\n=== RESTORE 100% COMPLETE! PHONE IS REBOOTING INTO YOUR EXACT ROOTED STATE! ===", flush=True)


if __name__ == "__main__":
    main()
