# Techno BG6 — Custom Android Kernel

Custom kernel for the **TECNO BG6** (Tecno Spark Go 2024) built from the
Realme C51/C53 (Unisoc UMS9230 / T606) open-source kernel.

```
Device   : TECNO BG6 (TECNO-BG6)  ·  Unisoc UMS9230 / T606  ·  Android 13
Kernel   : 5.4.210-android12-9-gf8b17864a03c-ab602
Toolchain: AOSP clang r416183b (clang 12.0.5)
Root     : KernelSU v0.9.5 (kernel-integrated)
Status   : WORKING — boots, touch/WiFi/audio drivers load, KernelSU root active
```

---

## Features

| Feature | Detail |
|---|---|
| **KernelSU v0.9.5** | kernel-integrated root (manual kprobe integration) |
| **TCP BBR + FQ** | better throughput / lower latency on Wi-Fi & mobile |
| **ZRAM lz4 / lz4hc / zstd** | faster compression, smoother multitasking |
| **schedutil governor** | default CPU governor (battery + perf balance) |
| **kyber / mq-deadline I/O** | low-overhead storage scheduling |
| **Shadow Call Stack** | restored — required for stock `.ko` ABI compatibility |
| **Custom branding** | `Monir@tecno-bg6-v5-ksu` |
| **195 stock modules load** | touch, WiFi, BT, GPS, audio, camera, fingerprint |

---

## Release versions

| Tag | Root | Notes |
|---|---|---|
| `v2-golden-baseline` | Magisk | First booting build (SCS fix) |
| `v3-perf-golden` | Magisk | + BBR / ZRAM / schedutil |
| `v4-ksu-golden` | KernelSU | KPROBES **off** — `su` did not work |
| **`v5-ksu-kprobes-golden`** | **KernelSU ✅** | **current working build** |

---

## Repository layout

```
├── README.md
├── docs/
│   ├── BUILD.md            how to build from scratch
│   ├── FLASH.md            flashing + recovery
│   ├── PITFALLS.md         the traps that bricked / broke things
│   └── PROJECT_HANDOFF.md  full migration guide
├── scripts/                every build/repack/flash script used
├── configs/                stock + golden defconfigs
├── patches/                full change set as patch series
├── forensics/              symbol dumps, proc_version, lsmod, uboot log
└── images/                 (see Releases — too large for git)
```

---

## Quick start

### 1. Get the source

```bash
git clone https://github.com/monirhossain09544/Techno-BG6.git
cd Techno-BG6
```

Then fetch the **kernel source bundle** and **boot images** from
[Releases](../../releases):

```bash
# kernel_repo.bundle  (~208 MB)  — full git history, all tags
git clone kernel_repo.bundle kernel_ums9230
cd kernel_ums9230
git checkout v5-ksu-kprobes-golden
```

### 2. Toolchain

```bash
mkdir -p toolchains && cd toolchains
curl -L -o clang-r416183b.tar.gz \
  "https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android12-release/clang-r416183b.tar.gz"
mkdir -p clang-r416183b && tar xzf clang-r416183b.tar.gz -C clang-r416183b
```

### 3. Build

```bash
cd kernel_ums9230
export PATH="$PWD/../toolchains/clang-r416183b/bin:$PATH"
export KBUILD_BUILD_USER="Monir"
export KBUILD_BUILD_HOST="tecno-bg6-v5-ksu"

ARGS=(O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang \
  CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- \
  LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy \
  OBJDUMP=llvm-objdump STRIP=llvm-strip)

cp ../configs/bg6_golden_v3_defconfig out/.config
./scripts/config --file out/.config \
  --set-str LOCALVERSION "" \
  -e KSU -e KSU_DEBUG -e KPROBES -e KPROBE_EVENTS \
  -e LTO_CLANG -e SHADOW_CALL_STACK -e SHADOW_CALL_STACK_VMAP \
  -e MODVERSIONS -e MODULE_SIG -d MODULE_SIG_FORCE \
  -d OPLUS_FEATURE_PHOENIX -d IOSCHED_BFQ
make "${ARGS[@]}" olddefconfig
make -j"$(nproc)" "${ARGS[@]}" Image
```

Or just run the all-in-one script:

```bash
bash scripts/phase11_v5_ksu_kprobes.sh
```

### 4. Flash

```bash
adb reboot bootloader
fastboot flash boot_a bg6_boot_a_v5_ksu_kprobes.img
fastboot reboot
```

---

## ⚠️ Critical build rules (do not skip)

These were learned the hard way — each one caused a boot failure.

1. **`CLANG_TRIPLE=aarch64-linux-gnu-` must be passed to _both_**
   `make defconfig` **and** `make olddefconfig`.
   Without it clang targets x86_64, Kconfig silently drops
   `CONFIG_SHADOW_CALL_STACK`, the ABI breaks, and the phone hangs on the logo.

2. **`CONFIG_KPROBES=y` is required** (the stock kernel has it).
   KernelSU's `su`/ksud subsystems are `#ifdef CONFIG_KPROBES`.
   With it off, KernelSU compiles but root never works.

3. **With KPROBES on, the 6 manual syscall hooks must be REMOVED.**
   They reference `ksu_vfs_read_hook` / `ksu_execveat_hook` / `ksu_input_hook`,
   which only exist in the `#else` (non-KPROBES) branch → undefined symbol
   link failure. KernelSU uses `register_kprobe()` instead.

4. **Never disable `CONFIG_LTO_CLANG`** — `CONFIG_CFI_CLANG` depends on it.
   Turning LTO off silently disables CFI and breaks the .ko ABI.

5. **Keep `CONFIG_IOSCHED_BFQ` off.** It made the LTO link go from ~10 min
   to 55+ min (pathological cross-function optimization).

6. **`uname -r` must stay exactly** `5.4.210-android12-9-gf8b17864a03c-ab602`,
   otherwise vermagic mismatches and stock modules refuse to load.

---

## Recovery

**Soft brick** (bootloop / bad flash):
```bash
fastboot flash boot_a images/boot_a_stock.img
```

**Hard brick** (no fastboot, no fastbootd) — BROM mode:
1. Unplug USB, hold **Power 20 s** (screen stays black)
2. Hold **Vol Up + Vol Down**, plug USB, hold ~10 s
3. PC shows `SPRD U2S Diag (COMx)` → run the BROM restore tool

The full 72-partition ROM backup + tested recovery procedure is documented in
`docs/FLASH.md`.

---

## Credits

- Kernel source: [realme-kernel-opensource](https://github.com/realme-kernel-opensource/realme_C51_C53_Narzo-N53-AndroidT-kernel-source) (Realme C51/C53, same UMS9230 SoC)
- Root: [KernelSU](https://github.com/tiann/KernelSU) v0.9.5 by tiann
- Built by **Monir** with DeepSeek Harness

## License

Kernel source is GPL-2.0 (inherited). Scripts and documentation in this
repository are provided as-is for personal device modification.
