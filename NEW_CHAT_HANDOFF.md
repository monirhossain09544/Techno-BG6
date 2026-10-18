# TECNO BG6 CUSTOM KERNEL PROJECT — COMPLETE HANDOFF
# (Paste this whole message into a new chat to continue the project)

## READ THIS FIRST — PROJECT STATUS: ✅ WORKING & FULLY BACKED UP

I am continuing a **TECNO BG6 (Tecno Spark Go 2024) custom Android kernel** project.
The kernel is BUILT, FLASHED, BOOTING, and **KernelSU ROOT IS WORKING**.
Everything is backed up to GitHub, my local PC, and an external drive.

---

## 1. DEVICE & KERNEL FACTS

```
Device        : TECNO BG6  (TECNO-BG6-OP)
SoC           : Unisoc UMS9230 / T606
Android       : 13  (TP1A.220624.014 / 250722V2387)
adb serial    : 1099738415003670
Active slot   : _a
Kernel ver    : 5.4.210-android12-9-gf8b17864a03c-ab602   <<< MUST STAY EXACT
Kernel build  : #10 SMP PREEMPT Sat Oct 17 20:55:13 UTC 2026
Built by      : Monir@tecno-bg6-v5-ksu
Root          : KernelSU v0.9.5 (versionCode 11872)
SELinux       : Enforcing
Bootloader    : unlocked (verifiedbootstate=orange)
```

**Current state (verified with real commands):**
- uname -r = 5.4.210-android12-9-gf8b17864a03c-ab602 ✅
- sys.boot_completed = 1 ✅
- User state = RUNNING_UNLOCKED ✅ (phone must be unlocked or nothing works)
- adb shell su -c id  ->  uid=0(root) gid=0(root) context=u:r:su:s0  ✅ ROOT WORKS
- su -V -> 11872 ✅
- KernelSU Manager UI shows "Working", Version: 11872

---

## 2. 🔐 HOW TO GET ROOT FROM adb (CRITICAL — this confused us for hours)

**KernelSU is NOT Magisk.** Until you explicitly grant an app root inside the
KernelSU Manager, that app sees **no su at all** — it reports
`su: inaccessible or not found`, which looks like a broken kernel but is
actually a permission denial.

### If `adb shell su -c id` says "inaccessible or not found", do this ON THE PHONE:

```
1. Open the KernelSU app
2. Bottom menu -> "SuperUser" tab
3. Top-right 3-dot menu (⋮) -> tick "Show system apps"
4. Search box -> type:  shell
5. Tap "Shell" (com.android.shell) -> turn the Superuser switch ON
```

That's it. `adb shell su -c id` immediately returns `uid=0(root)`.

**Also note:** if the phone is at the lock screen (`dumpsys user | grep State`
shows `RUNNING_LOCKED`), CE storage is encrypted, `/data/adb` is unavailable,
and NO app can launch. **Enter the PIN.** Not a kernel problem.
---

## 3. SERVERS

### Server A (currently in use) — ALIVE as of this handoff
```
host     : gpu-kmsm
ip       : 173.208.247.17   port 22
user     : administrator
password : 6wq%x9ryT$
home     : ~/tecno_bg6_kernel/
disk     : 219G total, ~187G free
```

**IMPORTANT:** the user warned that this server **may disappear at any time**.
Do not rely on it. Everything needed to rebuild is on GitHub + local PC.

#### How to connect from Python (paramiko is installed locally)
```python
import paramiko
c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("173.208.247.17", port=22, username="administrator",
          password="6wq%x9ryT$", timeout=25)
def run(cmd, t=300):
    si, so, se = c.exec_command(cmd, timeout=t)
    return so.read().decode(errors='replace').rstrip(), se.read().decode(errors='replace').strip()
```

**KNOWN GOTCHAS:**
- PowerShell needs `$env:PYTHONIOENCODING='utf-8'` or Python 3.14 throws UnicodeEncodeError.
- Running background jobs with `&` over paramiko **hangs the stdout read**.
  Use `setsid nohup ... < /dev/null & echo started` and poll the logfile separately.
- Do **NOT** put `${VAR}` or backticks inside a JS/TS template string —
  it gets interpolated and breaks the script. Write the .py/.sh with the
  `write` tool, or use SFTP `put`, then run it.
- For anything over ~10 min use `run_in_background: true` + `job_output`.

---

## 4. GITHUB — EVERYTHING IS HERE (private repo)

```
Repo      : https://github.com/monirhossain09544/Techno-BG6
Owner     : monirhossain09544
Email     : monirhossain0954@gmail.com
Visibility: PRIVATE  (needs a token to download release assets)
```

### GitHub token (stored in Windows Credential Manager, NOT in any file)
Target `git:https://github.com`. Read it with ctypes `CredReadW` (snippet in
section 9). It is a `gho_...` token, 40 chars, scopes: **gist, repo, workflow**.

**Repository contents (main branch, 42 files):**
```
README.md                 overview, features, quick start
ROM_README.md             full ROM restore guide
.gitignore
docs/BUILD.md             build from scratch (deps, toolchain, config, gates, repack)
docs/FLASH.md             flashing + BROM recovery
docs/PITFALLS.md          8 traps that bricked/failed things
docs/PROJECT_HANDOFF.md   full migration guide
scripts/                  17 scripts (all phase*.sh, *.py)
configs/                  bg6_stock_defconfig + golden_v2/v3/v4_ksu/v4_dbg/v5
patches/                  0000-all-changes-v5.patch + per-version patches
forensics/                stock_kallsyms.txt, lsmod.txt, proc_version.txt, uname_r.txt, active_slot.txt
```

**Release 1: `v5-ksu-kprobes-golden`** (8 assets, 572 MB)
```
kernel_repo.bundle              207 MB   full git history, 4 tags
bg6_boot_a_v5_ksu_kprobes.img    64 MB   <<< THE WORKING KERNEL
bg6_boot_a_v4_ksu.img            64 MB
bg6_boot_a_v3_perf.img           64 MB
boot_a_stock.img                 64 MB   factory kernel (revert)
vendor_boot_a.img               100 MB
dtbo_a.img                        8 MB
vbmeta_a.img                      1 MB   DO NOT FLASH
```

**Release 2: `full-rom-backup`** (5 assets, 4.97 GB)
```
rom_rest.tar.gz     187.5 MB   97 files: boot, vbmeta, modem, loaders,
                               spd_dump.exe, .bat restore scripts
super.img.part01   1525.9 MB
super.img.part02   1525.9 MB
super.img.part03   1525.9 MB
super.img.part04    322.4 MB
```

### The `super.img` is SPLIT because GitHub caps release assets at 2 GB
and `super.img` is 4.79 GB (raw non-sparse image, no zero-fill, so compression
only gets it to ~4.0 GB — still over the cap).

### ⚠️ Downloading release assets from a PRIVATE repo
The plain `releases/download/<tag>/<file>` URL returns **404** without a token.
Use the API endpoint:
```bash
TOKEN=$(cat /tmp/gh_token)
ASSET_ID=$(curl -s -H "Authorization: token $TOKEN" \
  "https://api.github.com/repos/monirhossain09544/Techno-BG6/releases/tags/v5-ksu-kprobes-golden" \
  | python3 -c "import sys,json;d=json.load(sys.stdin);print([a['id'] for a in d['assets'] if a['name']=='kernel_repo.bundle'][0])")
curl -sL -H "Authorization: token $TOKEN" -H "Accept: application/octet-stream" \
  -o kernel_repo.bundle \
  "https://api.github.com/repos/monirhossain09544/Techno-BG6/releases/assets/$ASSET_ID"
```
(The user has been offered "make it public" and has not decided yet.)
---

## 5. LOCAL PC — WHAT'S WHERE

```
Working dir : C:\Users\Monir\Documents\deepseek-harness\default-workspace
```

### .\tecno_bg6_kernel\   (project preservation folder)
| File | Size | What |
|---|---|---|
| kernel_repo.bundle | 207 MB | full kernel git history |
| kernel_repo_v5.bundle | 207 MB | same, versioned copy |
| bg6_boot_a_v5_ksu_kprobes.img | 64 MB | **working kernel** |
| bg6_boot_a_v4_ksu*.img (3) | 192 MB | fallbacks |
| bg6_boot_a_v3_perf.img | 64 MB | Magisk+perf fallback |
| bg6_test_boot_a*.img (2) | 128 MB | history |
| portable_bundle.tar.gz | 35.2 MB | KernelSU source + configs |
| bg6_project_full_backup.tar.gz | 1.7 MB | scripts + defconfigs |
| KernelSU_v0.9.5_11872-release.apk | 8.1 MB | matching Manager APK |
| stock_kallsyms.txt | 9 MB | running-kernel symbols |
| bg6_*_defconfig (5) | — | stock + golden configs |
| PROJECT_HANDOFF.md | — | full migration guide |
| backups\ | 174 MB | boot_a, vendor_boot_a, dtbo_a, vbmeta_a |
| forensics\ | 9 MB | symbol dumps |
| portable\portable_bundle\ | — | extracted copy |

### .\rom_package\   (packaged ROM for GitHub)
```
rom_rest.tar.gz     187.5 MB
super.img.part01..04   4.97 GB total
```

### D:\Tecno_BG6_Full_ROM_Backup\   (THE ORIGINAL — 6 GB)
```
98 files, 6.06 GB, 72 verified partitions
Includes: spd_dump.exe, fdl1/fdl2 loaders,
          custom_exec_no_verify_65015f08.bin (96 B — REQUIRED for BROM restore),
          Restore_Full_ROM_BROM.bat, Restore_boot_a_ONLY.bat, checksums.txt
```

**Disk space:** C: ~20 GB free, D: ~9 GB free. It's tight — be careful.

---

## 6. KERNEL SOURCE & BUILD

```
Base     : Realme C51/C53/Narzo-N53 AndroidT kernel (same UMS9230 SoC)
Remote   : https://github.com/realme-kernel-opensource/realme_C51_C53_Narzo-N53-AndroidT-kernel-source.git
Toolchain: AOSP clang r416183b (clang 12.0.5, build 7284624)
         + aarch64-linux-android-4.9 + magiskboot
```

### Git tags (all inside the bundle)
| Tag | Commit | What |
|---|---|---|
| (base) | 4381465cc | upstream Realme import |
| `v2-golden-baseline` | 2a68ef3eb | SCS fix, no OPLUS phoenix — first booting |
| `v3-perf-golden` | bd81b8fa2 | + BBR/FQ, ZRAM lz4/lz4hc/zstd, schedutil, kyber |
| `v4-ksu-golden` | 66917a2bf | + KernelSU v0.9.5 (KPROBES OFF — su DID NOT WORK) |
| **`v5-ksu-kprobes-golden`** | **dd601bbe8** | **+ KPROBES, hooks removed — ROOT WORKS** |

```bash
# restore the source anywhere
git clone kernel_repo.bundle kernel_ums9230
cd kernel_ums9230
git checkout v5-ksu-kprobes-golden
```

### Restore + build on a fresh server
```bash
sudo apt-get install -y git make bc bison flex libssl-dev libelf-dev \
  libncurses-dev zstd cpio rsync unzip wget curl python3 xz-utils

# toolchain (1.4 GB, re-downloadable)
mkdir -p toolchains && cd toolchains
curl -L -o clang-r416183b.tar.gz \
  "https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android12-release/clang-r416183b.tar.gz"
mkdir -p clang-r416183b && tar xzf clang-r416183b.tar.gz -C clang-r416183b

# magiskboot from a Magisk APK
unzip -j Magisk-v27.0.apk 'lib/arm64-v8a/libmagiskboot.so' -d .
mv libmagiskboot.so magiskboot && chmod +x magiskboot
```

Then just run `scripts/phase11_v5_ksu_kprobes.sh` (or follow `docs/BUILD.md`).

---

## 7. ⚠️ CRITICAL BUILD RULES — DO NOT VIOLATE

These cost real bricks. Full detail in `docs/PITFALLS.md`.

1. **`CLANG_TRIPLE=aarch64-linux-gnu-` must be passed to BOTH
   `make defconfig` AND `make olddefconfig`.**
   Without it clang targets x86_64, Kconfig silently DROPS
   `CONFIG_SHADOW_CALL_STACK` (no warning). The stock kernel and all 195
   `.ko` modules are built WITH SCS — without `scs_init()` the kernel dies
   before USB comes up -> **HARD BRICK** (no adb, no fastboot, no device).
   Verify: `grep CONFIG_SHADOW_CALL_STACK out/.config` -> `=y`,
   and `grep scs_init out/System.map` -> present.

2. **`CONFIG_KPROBES=y` is REQUIRED.** The stock kernel has it. KernelSU
   v0.9.5 guards `ksu_sucompat_init()`/`ksu_ksud_init()` with
   `#ifdef CONFIG_KPROBES`. With it off, KernelSU compiles and the Manager
   says "Working", but `su` never appears. (The old runbook's rule to keep
   KPROBES off "for ABI safety" was **factually wrong**.)

3. **With KPROBES ON, the 6 manual syscall hooks MUST be REMOVED.**
   Files: `fs/exec.c`, `fs/open.c`, `fs/read_write.c`, `fs/stat.c`,
   `drivers/input/input.c`, `fs/devpts/inode.c`.
   They reference `ksu_vfs_read_hook`/`ksu_execveat_hook`/`ksu_input_hook`,
   which are only *defined* in the non-KPROBES `#else` branch ->
   `error: undefined symbol` at `vmlinux.o` link.
   KernelSU uses `register_kprobe()` instead. `scripts/revert_hooks.py` does this.
   Verify: `grep -c ksu_handle_ fs/exec.c` -> **0**.

4. **Never disable `CONFIG_LTO_CLANG`** — `CONFIG_CFI_CLANG` depends on it.
   Turning LTO off silently disables CFI and breaks the `.ko` ABI.

5. **Never enable `CONFIG_IOSCHED_BFQ`** — it pushed the LTO `vmlinux.o` link
   from ~10 min to **55+ min** (ld.lld RSS 10.8 -> 18.4 GB). Use kyber + mq-deadline.

6. **`uname -r` must stay exactly `5.4.210-android12-9-gf8b17864a03c-ab602`.**
   Locked via `CONFIG_LOCALVERSION=""` + a patched `scripts/setlocalversion`.

7. **ABI configs that must never be disabled:**
   `CONFIG_SHADOW_CALL_STACK=y`, `CONFIG_SHADOW_CALL_STACK_VMAP=y`,
   `CONFIG_LTO_CLANG=y`, `CONFIG_CFI_CLANG=y`, `CONFIG_MODVERSIONS=y`,
   `CONFIG_MODULE_SIG=y` (with `MODULE_SIG_FORCE` **off**), `CONFIG_KPROBES=y`.

8. **The `drivers/kernelsu` symlink trap** — KernelSU's `setup.sh` makes
   `drivers/kernelsu -> ../KernelSU/kernel`. `KernelSU/` was an untracked
   nested git checkout, so a fresh clone got a **BROKEN symlink** and could
   not build. This is **FIXED** in v5: the source is now committed as real
   files (12 `.c` under `drivers/kernelsu/`). Do not reintroduce the symlink.

### Golden build command
```bash
export PATH="$PWD/toolchains/clang-r416183b/bin:$PATH"
export KBUILD_BUILD_USER="Monir"
export KBUILD_BUILD_HOST="tecno-bg6-v5-ksu"
ARGS=(O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang \
  CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- \
  LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy \
  OBJDUMP=llvm-objdump STRIP=llvm-strip)
cp ../configs/bg6_golden_v3_defconfig out/.config
./scripts/config --file out/.config --set-str LOCALVERSION "" \
  -e KSU -e KSU_DEBUG -e KPROBES -e KPROBE_EVENTS \
  -e LTO_CLANG -e SHADOW_CALL_STACK -e SHADOW_CALL_STACK_VMAP \
  -e MODVERSIONS -e MODULE_SIG -d MODULE_SIG_FORCE \
  -d OPLUS_FEATURE_PHOENIX -d IOSCHED_BFQ
make "${ARGS[@]}" olddefconfig
make -j"$(nproc)" "${ARGS[@]}" Image        # LTO link ~10 min
```

### Post-build gates (all must pass)
```
CONFIG_KPROBES=y  CONFIG_SHADOW_CALL_STACK=y  CONFIG_LTO_CLANG=y
CONFIG_CFI_CLANG=y  CONFIG_MODVERSIONS=y  CONFIG_MODULE_SIG=y
CONFIG_KSU=y  CONFIG_KSU_DEBUG=y
kernelrelease = 5.4.210-android12-9-gf8b17864a03c-ab602
Image ~37 MB, KERNEL_SZ 38453760, HEADER_VER 4,
KERNEL_FMT raw, RAMDISK_FMT lz4_legacy
System.map: scs_init present, ksu_handle_prctl present, ~141 kprobe syms,
            no phoenix/oplus symbols
```

### Repack (kernel into the STOCK boot image)
```bash
cp images/boot_a_stock.img ./boot.img
magiskboot unpack -h boot.img
magiskboot cpio ramdisk.cpio restore      # strip Magisk if present
cp <new>/arch/arm64/boot/Image ./kernel
magiskboot repack boot.img bg6_boot_a_v5_ksu_kprobes.img
```
---

## 8. FLASHING & RECOVERY

### Flash a kernel
```bash
adb reboot bootloader
fastboot flash boot_a bg6_boot_a_v5_ksu_kprobes.img
fastboot reboot
```
**`fastboot boot <img>` is IGNORED by the Unisoc T606 bootloader** — it prints
OKAY but boots the old kernel from flash. Always use `fastboot flash boot_a`.

- PowerShell treats fastboot's stderr as an error (exit 1) — the flash still works.
- `flash boot_a` always. **NEVER touch `vbmeta_a`.**

### Verify after boot
```bash
adb shell uname -r                        # Monir@tecno-bg6-v5-ksu in uname -a
adb shell getprop sys.boot_completed      # 1
adb shell dumpsys user | grep "State:"    # RUNNING_UNLOCKED  <-- must be unlocked
adb shell su -c id                        # uid=0(root)   (after granting Shell)
```

### 🔴 HARD BRICK RECOVERY (BROM) — tested and works
Use when there is no fastboot / no fastbootd / no USB device at all.
1. Unplug USB. Power is off (hold Power 20 s if unsure).
2. Hold **Volume Up + Volume Down** together — do not release.
3. While holding both, **plug the USB cable**. Keep holding ~10 s.
4. Windows shows **`SPRD U2S Diag (COMx)`** when successful.

Then run from `D:\Tecno_BG6_Full_ROM_Backup\`:
```
Restore_boot_a_ONLY.bat     <<< SAFEST (single partition)
Restore_Full_ROM_BROM.bat   full 72-partition restore
```
`custom_exec_no_verify_65015f08.bin` (96 B) **must** be present or the restore
fails immediately.

### Reassembling the ROM parts from GitHub
```bash
cat super.img.part0* > super.img          # or PowerShell Get-Content -Encoding Byte
tar xzf rom_rest.tar.gz
mv super.img Tecno_BG6_Full_ROM_Backup/
sha256sum -c checksums.txt
```
Verified: reassembled `super.img` sha256 =
`83525363661b8ffe82f3a971530707994ef82cf69a34ba708fa26121f905b69b` (matches original).

### What is safe to flash
| Partition | Safe? |
|---|---|
| boot_a | ✅ always |
| vendor_boot_a / dtbo_a | ⚠️ only with matching kernel |
| vbmeta_a | ❌ **DO NOT TOUCH** |

---

## 9. THE GITHUB TOKEN SNIPPET (reuse this)

```python
import ctypes
from ctypes import wintypes, POINTER, byref
advapi = ctypes.windll.advapi32
class CREDENTIAL(ctypes.Structure):
    _fields_ = [("Flags", wintypes.DWORD),("Type", wintypes.DWORD),
        ("TargetName", wintypes.LPWSTR),("Comment", wintypes.LPWSTR),
        ("LastWritten", wintypes.FILETIME),("CredentialBlobSize", wintypes.DWORD),
        ("CredentialBlob", ctypes.POINTER(ctypes.c_byte)),("Persist", wintypes.DWORD),
        ("AttributeCount", wintypes.DWORD),("Attributes", ctypes.c_void_p),
        ("TargetAlias", wintypes.LPWSTR),("UserName", wintypes.LPWSTR)]
p = POINTER(CREDENTIAL)()
advapi.CredReadW("git:https://github.com", 1, 0, byref(p))
tok = ctypes.string_at(p.contents.CredentialBlob,
                       p.contents.CredentialBlobSize).decode('utf-16-le','replace')
# user = p.contents.UserName   -> 'monirhossain09544'
H = {"Authorization": "token " + tok,
     "Accept": "application/vnd.github+json", "User-Agent": "dsh"}
```
**Never write the token into a tracked file.** If you stage it to a server,
`chmod 600` it and `rm` it when done.

---

## 10. LOCAL TOOLING NOTES

| Tool | Status |
|---|---|
| python | 3.14.3, has paramiko + requests |
| adb / fastboot | present, phone works |
| **git** | ❌ **NOT installed / not on PATH** — do git work on the server |
| tar | C:\Windows\system32\tar.exe |
| 7-Zip | not installed |
| OS | Windows; powershell via `tools.pwsh` (use `run_in_background` for long jobs) |

**PowerShell quirks:**
- `$ErrorActionPreference='Continue'` at the top or adb/fastboot stderr aborts things.
- Avoid `"$var:suffix"` — PowerShell parses `$var:` as a drive/scope. Use `"$var" + "suffix"`.
- Setting `sandbox_permissions` is DISABLED in this session (approval prompts off).

---

## 11. WHAT IS DONE vs WHAT'S LEFT

### ✅ DONE
- v2 (SCS fix) -> v3 (perf) -> v4 (KernelSU, broken) -> **v5 (KernelSU WORKING)**
- Kernel built, flashed, boots, 195 stock modules load
- KernelSU v0.9.5 root **verified working** (`uid=0`)
- `drivers/kernelsu` symlink bug found and fixed
- Full project pushed to GitHub (42 files)
- Kernel bundle + all boot images -> GitHub release `v5-ksu-kprobes-golden`
- Full 6 GB ROM -> split, uploaded to GitHub release `full-rom-backup`
- **All ROM parts verified byte-identical** to the original (sha256 match)
- Docs written: BUILD.md, FLASH.md, PITFALLS.md, PROJECT_HANDOFF.md, ROM_README.md
- Local + D: backups complete

### ⏳ OPEN / POSSIBLE NEXT STEPS
- **Repo is still PRIVATE.** User was offered "make public" and has not
  answered — ask again if downloading from another machine matters.
- `/data/adb/magisk` + `magisk.db` still exist (leftovers from the old Magisk
  install). Harmless, but could be cleaned with root.
- No further kernel features requested yet — BBR/ZRAM/schedutil are already in v3+.

---

## 12. HOW TO WORK WITH ME ON THIS

- The user writes in **Bangla (Banglish)**. Reply in Bangla, keep it concise;
  they explicitly said "eto beshi ktha bolba na, kaj e focused thakar jonno".
- The user is hands-on and often right — when they correct you, verify their
  claim rather than defending your position. (They correctly diagnosed the
  KernelSU permission model when I got it wrong.)
- **Never flash anything risky without telling them.** Prefer `fastboot flash
  boot_a` only, never `vbmeta_a`.
- Long operations: use background jobs + `job_output`, don't busy-poll.
- Prefer verifying claims with real commands over asserting them.

---

## 13. QUICK REFERENCE — ONE-LINERS

```bash
# is the phone healthy?
adb devices && adb shell "uname -r; getprop sys.boot_completed; dumpsys user | grep State:"

# do I have root?
adb shell su -c id

# KernelSU status from the phone UI
adb shell "am start -n me.weishu.kernelsu/.ui.MainActivity"
adb shell "uiautomator dump /sdcard/u.xml >/dev/null; cat /sdcard/u.xml" | grep -o 'text="[^"]*"'

# revert to factory kernel
adb reboot bootloader && fastboot flash boot_a boot_a_stock.img && fastboot reboot

# server reachable?
ssh administrator@173.208.247.17   # password 6wq%x9ryT$

# rebuild (on server)
cd ~/tecno_bg6_kernel && bash phase11_v5_ksu_kprobes.sh
```

---

## 14. FINAL STATUS LINE

**Kernel 5.4.210-android12-9-gf8b17864a03c-ab602 built by Monir@tecno-bg6-v5-ksu,
running on TECNO BG6 slot _a, booting clean, 195 stock modules loaded,
KernelSU v0.9.5 root ACTIVE and verified (`su -c id` -> `uid=0(root)`).
Everything backed up to GitHub (2 releases, 5.53 GB), local PC, and D: drive.
The project can be fully rebuilt on a brand-new server using only
`kernel_repo.bundle` + `scripts/phase11_v5_ksu_kprobes.sh` + a clang re-download.**

---

## 15. FIRST THING TO DO IN THE NEW CHAT

```
1. Check the phone:   adb devices && adb shell "uname -r; dumpsys user | grep State:"
2. Check root:        adb shell su -c id
3. Check the server:  (paramiko to 173.208.247.17, see section 3)
4. Ask the user what they want to do next.
```
If the phone shows RUNNING_LOCKED, tell the user to unlock it with their PIN.
If `su` is missing, walk them through section 2 (grant Shell in KernelSU).
