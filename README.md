# Techno BG6 — Custom Android Kernel, Full Android 13 / HiOS 13 Pro & DT2W/DT2S Suite

Complete custom kernel, **Android 13 Go-to-Full HiOS 13 Pro conversion module**, and **Chipone `ICNL9916` In-Cell TDDi Double-Tap to Wake / Sleep (DT2W/DT2S)** engineering suite for the **TECNO BG6** (Tecno Spark Go 2024, Unisoc UMS9230 / T606).

```
Device   : TECNO BG6 (TECNO-BG6)  ·  Unisoc UMS9230 / T606  ·  Android 13
Kernel   : 5.4.210-android12-9-gf8b17864a03c-ab602
Toolchain: AOSP clang r416183b (clang 12.0.5)
Root     : KernelSU v0.9.5 (kernel-integrated)
OS Mode  : Full Android 13 / Full HiOS 13 Pro (converted from Android Go / Lite)
DT2W/DT2S: Working (BOE ICNL9916 In-Cell TDDi + Patched dtbo_a + dt2w_daemon v4)
```

---

## Key Features

| Category | Feature | Detail |
|---|---|---|
| **Full Android 13 / HiOS 13 Pro** | **Go-to-Full Conversion (`bg6_hios_pro`)** | Disables `ro.config.low_ram` & `android.software.ram.low`, unlocks full Recents, Split-Screen, Freeform Floating Windows, PiP, and App Widgets |
| **Full HiOS 13 Suite** | **Special Function & System Apps** | Ports & enables `Smart Panel`, `Micro Intelligence`, `Lightning Multi-Window`, `Thunderback`, `App Lock`, `XClone (Dual App)`, `Social Turbo`, `Kids Mode`, and `Peek Proof` |
| **Touch / Display** | **Double-Tap to Wake & Sleep (`DT2W/DT2S`)** | Full hardware/driver research & fix for BOE `ICNL9916` flashless In-Cell TDDi (`dtbo_a` Entry 5 `psensor_function=<1>` + `dt2w_daemon v4` Pitch-Black Standby & Lockscreen DT2S) |
| **Root** | **KernelSU v0.9.5** | Kernel-integrated root (`CONFIG_KPROBES=y`) |
| **Networking & Memory** | **TCP BBR + FQ & ZRAM (`lz4`/`zstd`)** | Lower latency networking & faster memory compression |
| **CPU & I/O** | **`schedutil` + `kyber`/`mq-deadline`** | Optimized battery/performance balance & low-overhead storage scheduling |
| **ABI Compatibility** | **Shadow Call Stack + CFI + LTO** | All 195 stock `.ko` vendor modules load cleanly |

---

## Documentation & Engineering Research

- **[`docs/FULL_ANDROID_HIOS13_CONVERSION.md`](docs/FULL_ANDROID_HIOS13_CONVERSION.md)** — Complete 5-layer reverse engineering and implementation guide on converting the TECNO BG6 from crippled Android 13 Go (`HiOS Lite`) to **Full Android 13 / Full HiOS 13 Pro** (`system.prop`, permission XML bind-mounts, `BG6HiOSPro.apk` RRO overlay, ported 64-bit system apps, and hidden `OSSettingsExt` activities).
- **[`docs/DT2W_ICNL9916_RESEARCH.md`](docs/DT2W_ICNL9916_RESEARCH.md)** — Deep-dive hardware and kernel driver analysis of why standard DT2W fails on the BOE `ICNL9916` (`01f1` SRAM-BOOT) In-Cell TDDi panel and how our 4-part solution (`dtbo_a` Entry 5 patch, `TRAN_PS_SUSPEND_MODE`, keylayout wakeup mappings, and `dt2w_daemon v4`) achieves instant Double-Tap to Wake & Lockscreen Double-Tap to Sleep.
- **[`docs/BUILD.md`](docs/BUILD.md)** — How to build the custom kernel from scratch.
- **[`docs/FLASH.md`](docs/FLASH.md)** — Flashing instructions and BROM hard-brick recovery.
- **[`docs/PITFALLS.md`](docs/PITFALLS.md)** — Critical build/ABI traps that cause bootloops or bricks.
- **[`docs/PROJECT_HANDOFF.md`](docs/PROJECT_HANDOFF.md)** — Full project handoff and migration guide.

---

## Release Versions

| Tag | Contents | Notes |
|---|---|---|
| `v2-golden-baseline` | Kernel | First booting build (SCS fix) |
| `v3-perf-golden` | Kernel | + BBR / ZRAM / schedutil |
| `v4-ksu-golden` | Kernel | KPROBES **off** — `su` did not work |
| `v5-ksu-kprobes-golden` | Kernel (`boot_a`) | Working KernelSU v0.9.5 kernel + stock partition backups |
| **`v6-hios13-pro-dt2w`** | **`bg6_hios_pro.zip` + `dtbo_patched.img` + `dt2w_daemon`** | **Full Android 13 / HiOS 13 Pro Module + Working DT2W & Lockscreen DT2S** |
| `full-rom-backup` | Full 72-partition ROM (`6.06 GB`) | Complete BROM emergency restore package |

---

## Repository Layout

```
├── README.md
├── ROM_README.md
├── NEW_CHAT_HANDOFF.md
├── docs/
│   ├── FULL_ANDROID_HIOS13_CONVERSION.md   Full Android 13 / HiOS 13 Pro engineering guide
│   ├── DT2W_ICNL9916_RESEARCH.md           ICNL9916 TDDi DT2W & DT2S hardware/driver research
│   ├── BUILD.md                            Kernel build instructions
│   ├── FLASH.md                            Flashing + BROM recovery
│   ├── PITFALLS.md                         Kernel/ABI traps to avoid
│   └── PROJECT_HANDOFF.md                  Migration & handoff guide
├── hios_pro_dt2w/
│   ├── dt2w_daemon.c                       C source for dt2w_daemon v4 (DT2W + Lockscreen DT2S)
│   ├── build_patched_dtbo.py               FDT patcher adding psensor_function=<1> to dtbo_a Entry 5
│   └── module/                             bg6_hios_pro module scripts, props, overlay & keylayouts
│       ├── module.prop
│       ├── system.prop
│       ├── post-fs-data.sh
│       ├── service.sh
│       ├── customize.sh
│       ├── product/overlay/BG6HiOSPro.apk
│       └── system/usr/keylayout/
│           ├── Generic.kl
│           └── chipone-tddi.kl
├── scripts/                                Kernel build/repack/flash scripts
├── configs/                                Stock + golden kernel defconfigs
├── patches/                                Kernel patch series
└── forensics/                              Symbol dumps, proc_version, lsmod
```

---

## Quick Start: Installing Full HiOS 13 Pro & Double-Tap to Wake (`v6-hios13-pro-dt2w`)

1. **Flash Patched `dtbo_a`** (enables `/sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable` via `psensor_function = <1>`):
   ```bash
   adb push dtbo_patched.img /data/local/tmp/
   adb shell su -c "dd if=/data/local/tmp/dtbo_patched.img of=/dev/block/by-name/dtbo_a bs=4096 conv=fsync"
   ```
2. **Install `bg6_hios_pro.zip`** in KernelSU Manager (or Magisk) and reboot.
3. After boot:
   - Full Android 13 / HiOS 13 Pro UI (`Special Function`, `Smart Panel`, `Lightning Multi-Window`, `Split Screen`, `App Lock`, `XClone`, etc.) is active.
   - **Double-Tap to Wake** (on black screen), **Lockscreen Double-Tap to Sleep**, and **Home Screen Double-Tap to Sleep** work automatically across reboots.

---

## Quick Start: Building the Kernel (`v5-ksu-kprobes-golden`)

### 1. Get the source

```bash
git clone https://github.com/monirhossain09544/Techno-BG6.git
cd Techno-BG6
```

Fetch `kernel_repo.bundle` (~208 MB) from [Releases](../../releases):

```bash
git clone kernel_repo.bundle kernel_ums9230
cd kernel_ums9230
git checkout v5-ksu-kprobes-golden
```

### 2. Build

```bash
bash scripts/phase11_v5_ksu_kprobes.sh
```

### 3. Flash

```bash
adb reboot bootloader
fastboot flash boot_a bg6_boot_a_v5_ksu_kprobes.img
fastboot reboot
```

---

## Credits

- Kernel source: [realme-kernel-opensource](https://github.com/realme-kernel-opensource/realme_C51_C53_Narzo-N53-AndroidT-kernel-source) (Realme C51/C53, same UMS9230 SoC)
- Root: [KernelSU](https://github.com/tiann/KernelSU) v0.9.5 by tiann
- Research & Engineering: **Monir** (`monirhossain0954@gmail.com`)

## License

Kernel source is GPL-2.0 (inherited). Scripts, daemon source, and documentation in this repository are provided as-is for personal device modification.
