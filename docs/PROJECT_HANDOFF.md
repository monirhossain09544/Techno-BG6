# TECNO BG6 Custom Kernel — Project Handoff & Server Migration Guide

**Device:** TECNO BG6 (Tecno Spark Go 2024) · Unisoc UMS9230 / T606 · Android 13
**Kernel target:** `5.4.210-android12-9-gf8b17864a03c-ab602`
**Last updated:** 2026-10-18

---

## 1. What this project is

A fully working custom Android kernel for the Tecno Spark Go 2024 built from the
Realme C51/C53 (same UMS9230 SoC) open-source kernel, with:

- **Shadow Call Stack (SCS)** restored — required for stock .ko ABI compatibility
- **Performance:** TCP BBR, FQ, LZ4HC/ZSTD ZRAM, schedutil governor, kyber/mq-deadline
- **KernelSU v0.9.5** root (kernel-integrated)
- **Custom branding:** `Monir@tecno-bg6-*`
- 195 stock hardware modules (.ko) load correctly (touch / WiFi / audio / etc.)

---

## 2. Servers / machines involved

| Role | Where | Notes |
|---|---|---|
| **Build server** | `gpu-kmsm` · 173.208.247.17:22 · user `administrator` | 72 threads, 256 GB RAM, A100 (unused for kernel) |
| **Local PC** | `C:\Users\Monir\Documents\deepseek-harness\default-workspace\tecno_bg6_kernel\` | This preservation copy |
| **Phone backup** | `D:\Tecno_BG6_Full_ROM_Backup\` | 6.06 GB, 72 partitions, verified |
| **Phone** | adb serial `1099738415003670` | fastboot + adb |

---

## 3. WHAT MUST EXIST ON THE LOCAL PC (to continue without the server)

### 3.1 Absolutely essential (small — already local)

| Item | Local path | Why |
|---|---|---|
| **Kernel git bundle** | `tecno_bg6_kernel\kernel_repo.bundle` (207 MB) | **ENTIRE source + all 4 commits + patches.** This alone rebuilds everything. |
| **Portable bundle** | `tecno_bg6_kernel\portable_bundle.tar.gz` (36 MB) | All scripts, defconfigs, KernelSU source, forensics |
| **Golden boot images** | `tecno_bg6_kernel\bg6_boot_a_v*.img` (+ .gz) | Known-good flashable fallbacks |
| **Stock boot backup** | `tecno_bg6_kernel\backups\boot_a.img` | Revert-to-stock |
| **Full ROM backup** | `D:\Tecno_BG6_Full_ROM_Backup\` | BROM unbrick (72 partitions) |
| **KernelSU APK** | `tecno_bg6_kernel\KernelSU_v0.9.5_11872-release.apk` | Matches kernel version |

### 3.2 Toolchains (large — re-downloadable, ~1.8 GB)

| Tool | Size | Source |
|---|---|---|
| AOSP clang r416183b | 1.4 GB | `https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android12-release/clang-r416183b.tar.gz` |
| aarch64-linux-android-4.9 | 220 KB | AOSP prebuilt gcc |
| magiskboot | 904 KB | Magisk release |

**Verdict:** toolchains are NOT worth syncing locally — re-download on any new
server in ~5 min. Everything else is already saved.

---

## 4. HOW TO CONTINUE ON A DIFFERENT SERVER

```bash
# 1. Get a fresh Ubuntu server (any 16+ core, 32 GB RAM box works; 72-thread = faster LTO)

# 2. Install deps
sudo apt-get update && sudo apt-get install -y \
  git make python3 bc bison flex libssl-dev libelf-dev \
  libncurses-dev zstd cpio rsync unzip wget curl

# 3. Restore the kernel source from the bundle
mkdir -p ~/tecno_bg6_kernel && cd ~/tecno_bg6_kernel
# copy kernel_repo.bundle here, then:
git clone kernel_repo.bundle kernel_ums9230
cd kernel_ums9230
git checkout v4-ksu-golden      # or v2-golden-baseline / v3-perf-golden

# 4. Restore scripts + defconfigs
mkdir -p ~/tecno_bg6_kernel
tar xzf portable_bundle.tar.gz -C /tmp/
cp -a /tmp/portable_bundle/*.py /tmp/portable_bundle/*.sh ~/tecno_bg6_kernel/
cp -a /tmp/portable_bundle/*defconfig ~/tecno_bg6_kernel/backups/

# 5. Re-download toolchain
mkdir -p ~/tecno_bg6_kernel/toolchains && cd ~/tecno_bg6_kernel/toolchains
curl -L -o clang-r416183b.tar.gz \
  "https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android12-release/clang-r416183b.tar.gz"
mkdir -p clang-r416183b && tar xzf clang-r416183b.tar.gz -C clang-r416183b
# magiskboot: extract from Magisk APK
#   unzip Magisk-*.apk lib/arm64-v8a/libmagiskboot.so -d /tmp/mb
#   cp /tmp/mb/lib/arm64-v8a/libmagiskboot.so ~/tecno_bg6_kernel/toolchains/magiskboot
#   chmod +x ~/tecno_bg6_kernel/toolchains/magiskboot

# 6. Restore phone backups
mkdir -p ~/tecno_bg6_kernel/backups
# copy boot_a.img, vendor_boot_a.img, dtbo_a.img, vbmeta_a.img, bg6_stock_defconfig

# 7. Build (see section 6)
```

---

## 5. CRITICAL BUILD RULES (learned the hard way)

### 5.1 ABI-critical configs — NEVER turn these off
```
CONFIG_SHADOW_CALL_STACK=y     # x18 ABI — v1 bricked without this
CONFIG_SHADOW_CALL_STACK_VMAP=y
CONFIG_LTO_CLANG=y             # CFI depends on it
CONFIG_CFI_CLANG=y
CONFIG_MODVERSIONS=y
CONFIG_MODULE_SIG=y            # but MODULE_SIG_FORCE must stay OFF
CONFIG_KPROBES=y               # STOCK HAS THIS — required for KernelSU
```

### 5.2 The CLANG_TRIPLE trap (caused the v1 brick)
Always pass `CLANG_TRIPLE=aarch64-linux-gnu-` to **both** `make ... defconfig`
**and** `make ... olddefconfig`. Without it, clang defaults to x86_64 and
Kconfig silently deletes `CONFIG_SHADOW_CALL_STACK` → ABI mismatch → brick.

### 5.3 The KPROBES rule (caused KernelSU root to fail)
**Stock kernel HAS `CONFIG_KPROBES=y`.** The original runbook wrongly said to
keep it OFF "for ABI safety" — that was false. Consequences:

- With KPROBES **OFF** → KernelSU compiles but `su` never works
  (its sucompat/ksud subsystems are `#ifdef CONFIG_KPROBES`).
  Manual hooks in 6 files work around it, but this is the non-recommended path.
- With KPROBES **ON** → KernelSU uses `register_kprobe()` (official path).
  The 6 manual hooks MUST be REMOVED or the build fails with:
  `undefined symbol: ksu_vfs_read_hook / ksu_execveat_hook / ksu_input_hook`
  (those bools are only defined in the `#else` (non-KPROBES) branch of ksud.c).

**Correct setup = KPROBES=y + NO manual syscall hooks.**

### 5.4 LTO is slow but must stay on
`vmlinux.o` LTO link takes ~10-15 min. Enabling **BFQ** blew it up to 55+ min
(pathological). Keep `CONFIG_IOSCHED_BFQ` OFF; use kyber + mq-deadline.

### 5.5 uname -r must stay exact
`5.4.210-android12-9-gf8b17864a03c-ab602` — otherwise vermagic mismatches and
stock .ko modules refuse to load.

---

## 6. BUILD COMMAND

```bash
cd ~/tecno_bg6_kernel/kernel_ums9230
export PATH="$HOME/tecno_bg6_kernel/toolchains/clang-r416183b/bin:$PATH"
export KBUILD_BUILD_USER="Monir"
export KBUILD_BUILD_HOST="tecno-bg6-v5-ksu"

ARGS=(O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang \
  CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- \
  LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy \
  OBJDUMP=llvm-objdump STRIP=llvm-strip)

# configure
cp ~/tecno_bg6_kernel/golden_v3/bg6_golden_v3_defconfig out/.config
./scripts/config --file out/.config \
  --set-str LOCALVERSION "" \
  -e KSU -e KSU_DEBUG -e KPROBES -e KPROBE_EVENTS \
  -e LTO_CLANG -e SHADOW_CALL_STACK -e SHADOW_CALL_STACK_VMAP \
  -e MODVERSIONS -e MODULE_SIG -d MODULE_SIG_FORCE \
  -d OPLUS_FEATURE_PHOENIX -d IOSCHED_BFQ
make "${ARGS[@]}" olddefconfig

# build
make -j$(nproc) "${ARGS[@]}" Image

# repack into boot image (clean ramdisk)
mkdir -p ~/tecno_bg6_kernel/extracted/boot_v5 && cd $_
cp ~/tecno_bg6_kernel/backups/boot_a.img ./boot.img
~/tecno_bg6_kernel/toolchains/magiskboot unpack -h boot.img
~/tecno_bg6_kernel/toolchains/magiskboot cpio ramdisk.cpio restore   # strip Magisk
cp ~/tecno_bg6_kernel/kernel_ums9230/out/arch/arm64/boot/Image ./kernel
~/tecno_bg6_kernel/toolchains/magiskboot repack boot.img \
  ~/tecno_bg6_kernel/bg6_boot_a_v5_ksu_kprobes.img
```

---

## 7. FLASH & RECOVER

### Flash (fastboot)
```
adb reboot bootloader
fastboot flash boot_a bg6_boot_a_v5_ksu_kprobes.img
fastboot reboot
```

### Verify
```
adb shell uname -a          # expect Monir@tecno-bg6-v5-ksu
adb shell su -c id          # expect uid=0(root)
```

### Revert to previous kernel (5 sec)
```
fastboot flash boot_a <previous golden img>
```

### HARD BRICK → BROM recovery
1. Unplug USB. Hold Power 20 s (screen stays black).
2. Hold **Vol Up + Vol Down** together, plug USB, keep holding ~10 s.
3. Screen black + PC shows "SPRD U2S Diag (COMx)" = BROM mode entered.
4. Run `Restore_Full_ROM_BROM.bat` from `D:\Tecno_BG6_Full_ROM_Backup\`
   (needs `spd_dump.exe`, fdl loaders, `custom_exec_no_verify_65015f08.bin`,
   and the verified `boot_a.img`).

**This path is tested and works** — it recovered the phone after the v1 brick.

---

## 8. CURRENT STATE OF LOCAL PC

### Already preserved locally ✅
- `kernel_repo.bundle` (207 MB) — full git history
- `portable_bundle.tar.gz` (36 MB) — scripts + defconfigs + KernelSU src
- All golden boot images (v2/v3/v4, raw + .gz)
- Stock `boot_a.img` + `vendor_boot_a.img` + `dtbo_a.img` + `vbmeta_a.img`
- `bg6_stock_defconfig` (the phone's real config)
- `forensics/stock_kallsyms.txt` — running-kernel symbol dump
- KernelSU v0.9.5 APK
- `magisk_backup.tar.gz`

### NOT local (must re-download if server dies) ❌
- clang-r416183b toolchain (1.4 GB) — re-downloadable
- magiskboot — re-downloadable from Magisk APK
- `out/` build tree (2.5 GB) — regenerable by building
- `extracted/` work dirs

### Verdict
**The project is fully recoverable from the local PC alone.** The only things
missing are re-downloadable toolchains. Nothing critical is trapped on the server.

---

## 9. INVENTORY — server vs local

| Server item | Size | Local copy? | Needed to continue? |
|---|---|---|---|
| kernel_ums9230/.git | 218 MB | ✅ kernel_repo.bundle | YES (source) |
| KernelSU/ source | 40 MB | ✅ in portable bundle | YES |
| defconfigs (all) | ~1 MB | ✅ | YES |
| scripts (*.py, *.sh) | <100 KB | ✅ | YES |
| golden images | 600 MB | ✅ (+.gz) | YES (fallback) |
| backups/ (boot etc) | 174 MB | ✅ (major ones) | YES |
| forensics/ | 9 MB | ✅ | Reference |
| toolchains/ | 1.8 GB | ❌ | Re-download |
| out/ (build tree) | 2.5 GB | ❌ | Regenerate |
| extracted/ | 359 MB | ❌ | Regenerate |

---

# ⚠️ CRITICAL ADDENDUM (verified 2026-10-18)

## The symlink trap — a real gap that was found and FIXED

**Problem discovered:** The KernelSU source did NOT travel with the git repo.

```
drivers/kernelsu -> ../KernelSU/kernel      (git mode 120000 = SYMLINK)
```

`KernelSU/` was an untracked nested git checkout, so:
- A fresh `git clone` from the bundle produced a **BROKEN symlink**
- The build would fail immediately — KernelSU source simply absent
- **The v5 hook-removal fix was also uncommitted** (showed as ` M` in git status)

**Verified before fix:** fresh clone → `drivers/kernelsu/ksud.c` = MISSING → cannot build
**Verified after fix:** fresh clone → 12 real .c files, 0 ksu_handle refs, kprobe path intact

## What was done

1. Replaced the symlink with **real source files** (`cp -a KernelSU/kernel drivers/kernelsu`)
2. Committed the **v5 hook removal** (6 files)
3. Committed the **full KernelSU kernel source** into the repo
4. Tagged: **`v5-ksu-kprobes-golden`** (commit `e7a55d39d`)
5. Recreated the bundle and **verified by fresh clone**

## Bundle integrity

```
file    : kernel_repo.bundle  (also kernel_repo_v5.bundle)
size    : 217,078,608 bytes (207 MB)
sha256  : 2d6732fc47e8e4b68354a07da65cefb17a050f1ee1f42ad461b130a133d08906
tags    : v2-golden-baseline
          v3-perf-golden
          v4-ksu-golden
          v5-ksu-kprobes-golden     <-- CURRENT WORKING
commits : 5
```

**Verify your local copy is intact:**
```bash
sha256sum kernel_repo.bundle
# must print: 2d6732fc47e8e4b68354a07da65cefb17a050f1ee1f42ad461b130a133d08906
```

## Which tag to check out

| Tag | Kernel | Root | Notes |
|---|---|---|---|
| `v2-golden-baseline` | SCS fix | Magisk | First working |
| `v3-perf-golden` | +BBR/ZRAM/schedutil | Magisk | Performance |
| `v4-ksu-golden` | +KernelSU | KernelSU (broken) | KPROBES off — su non-functional |
| **`v5-ksu-kprobes-golden`** | **+KPROBES** | **KernelSU ✅ WORKING** | **USE THIS** |

## Known tooling limitations on the local PC

| Tool | Status | Impact |
|---|---|---|
| `git` | NOT on PATH | Cannot clone bundle locally — do it on the new server (Linux) |
| `adb` / `fastboot` | Present | Phone flash/recover works |
| `python3` | Present | Scripts run |
| Linux build tools | N/A (Windows) | **Build must happen on a Linux server** |

## Minimum viable recovery set (if server dies tonight)

Copy **only these** to any new Linux server and run `bootstrap_new_server.sh`:

| File | Size | Notes |
|---|---|---|
| `kernel_repo.bundle` | 207 MB | **MUST** — full source + all tags |
| `bg6_project_full_backup.tar.gz` | 1.7 MB | scripts + defconfigs |
| `portable_bundle.tar.gz` | 36 MB | KernelSU src backup + configs |
| `bootstrap_new_server.sh` | 5 KB | **NEW** one-shot setup |
| `bg6_boot_a_v5_ksu_kprobes.img` | 64 MB | Current working kernel (for flashing) |
| `backups\boot_a.img` | 64 MB | Stock revert |
| `D:\Tecno_BG6_Full_ROM_Backup\` | 6 GB | BROM unbrick |

**Total for a new server: ~310 MB** (+ toolchain re-download 1.4 GB)

Everything else (out/, extracted/, toolchains/) regenerates.

