# Techno BG6 — Project Infinity-X v3.12 (Android 16 QPR2), 5-Layer GNSS Engine, TECNO Suite, Custom Kernel & HiOS 13 Pro

Complete custom ROM, kernel, hardware overlay, **5-Layer Undetectable Kernel/Framework GNSS Engine**, **TECNO Native System Suite (Smart Caller V6 + WhatsApp Dialpad + Auto Dual-SIM Sync + HiOS 14 File Manager + Notes)**, **Android 13 Go-to-Full HiOS 13 Pro conversion**, and **Chipone `ICNL9916` In-Cell TDDi Double-Tap to Wake / Sleep (DT2W/DT2S)** repository for the **TECNO BG6** (Tecno Spark Go 2024, Unisoc UMS9230 / T606).

```
Device    : TECNO BG6 (TECNO-BG6)  ·  Unisoc UMS9230 / T606 (4GB Physical RAM + 4GB LZ4 ZRAM)
Active OS : Project Infinity-X v3.12 (Android 16 QPR2 / BP4A.251205.006, Non-Go Full RAM)
Kernel    : 5.4.210-android12-9-gf8b17864a03c-ab602 (KernelSU v0.9.5 + KPROBES + BBR + LZ4 ZRAM)
GNSS      : 5-Layer Undetectable Kernel & Framework GNSS Engine + KernelGnssSettings Map App
TECNO Apps: Smart Caller V6.0.1.123 (A16 Patched + Dual-SIM Auto-Sync + WhatsApp Button),
            HiOS 14 System File Manager v17.0.0.104 (Ad-Free), TECNO Notes v2.5.1.718
DT2W/DT2S : Working (BOE ICNL9916 In-Cell TDDi + Patched dtbo_a + dt2w_daemon)
```

---

## Key Features

| Category | Feature | Detail |
|---|---|---|
| **Android 16 QPR2 Custom ROM (`v7`)** | **Project Infinity-X v3.12 (`infinity_x_bg6_ready.img`)** | Full non-Go Android 16 QPR2 (`BP4A.251205.006`), `init_fixed`, `bg6_perf_engine` (4GB LZ4 ZRAM), custom `treble-overlay-tecno-bg6.apk`, `trust_warnings=0`, `navbar_hint=0`, AVB `SHA256_RSA2048` signed |
| **5-Layer GNSS Engine (`v7`)** | **Undetectable Kernel & Framework Location Engine** | `gnss_kernel_engine` C daemon + `framework.jar` & `services.jar` hooks + NMEA/SvStatus satellite constellation generator + `KernelGnssSettings.apk` live map controller (zero mock flags) |
| **TECNO Native Apps (`v7`)** | **Smart Caller V6 + File Manager + Notes (Stock Removed)** | Stock AOSP Dialer/Contacts deleted from image & source; replaced with TECNO `SmartCaller` V6 (WhatsApp dialpad button, Call Recordings, 63-col `Contacts.Entity` A16 fix, `StorageVolume` Import/Export fix, `SimAutoSyncHelper` Dual-SIM USIM auto-sync), ad-free HiOS 14 `FileManager` v17.0.0.104, and `TranssionNote` v2.5.1.718 |
| **Shunno OS / AOSP Tree (`v7`)** | **Full AOSP Patches & `vendor/transsion/bg6_suite`** | Complete git patches across 8 AOSP repos (`device/phh/treble`, `frameworks/base`, `Launcher3`, `Settings`, `hardware_overlay`, etc.) + `bg6_suite.mk` |
| **Full Android 13 / HiOS 13 Pro (`v6`)** | **Go-to-Full Conversion (`bg6_hios_pro`)** | Disables `ro.config.low_ram` & `android.software.ram.low`, unlocks full Recents, Split-Screen, Freeform Floating Windows, PiP, and App Widgets |
| **Touch / Display (`v6`)** | **Double-Tap to Wake & Sleep (`DT2W/DT2S`)** | Full hardware/driver research & fix for BOE `ICNL9916` flashless In-Cell TDDi (`dtbo_a` Entry 5 `psensor_function=<1>` + `dt2w_daemon`) |
| **Kernel & Root (`v5`)** | **KernelSU v0.9.5 + TCP BBR + LZ4 ZRAM** | Kernel-integrated root (`CONFIG_KPROBES=y`), Shadow Call Stack + CFI + LTO intact so all 195 stock `.ko` vendor modules load cleanly |

---

## Documentation & Engineering Research

- **[`docs/SESSION_2026_11_13_14_COMPLETE_ANALYSIS_AND_FINDINGS.md`](docs/SESSION_2026_11_13_14_COMPLETE_ANALYSIS_AND_FINDINGS.md)** — **LATEST (`v9`/`v10` Stock HiOS 13 + Full Security/RKP Forensics)**: Complete engineering log covering `v9`/`v10` production KernelSU patches (`patches/0005-*`, `patches/0006-*`), Linux `--make-rslave` Zygote mount isolation, Dual-Mode Clean Stock Lock & Rooted Snapshot Restore (`hios13_v10_snapshot_suite/`), Keystore2 `persistent.sqlite` RKP (`OID 1.3.6.1.4.1.11129.2.1.30`) certificate chain cross-checks, `TEESimulator` cache behavior, and the complete Foodpanda Rider (`IAL403`) investigation.
- **[`docs/INFINITY_X_A16_COMPLETE_GUIDE.md`](docs/INFINITY_X_A16_COMPLETE_GUIDE.md)** — **START HERE FOR `v7` (Android 16 QPR2)**: Complete guide to the 5-Layer GNSS Engine, TECNO Smart Caller V6 Android 16 smali/Java fixes (`Contacts.Entity` 63-column fix + `SimAutoSyncHelper` Dual-SIM sync), byte-for-byte image reconstruction (`rebuild_ready_img_from_vanilla.sh`), AOSP patch application, and BROM `super.img` flashing.
- **[`docs/FULL_ANDROID_HIOS13_CONVERSION.md`](docs/FULL_ANDROID_HIOS13_CONVERSION.md)** — Complete 5-layer reverse engineering and implementation guide on converting the TECNO BG6 from crippled Android 13 Go (`HiOS Lite`) to **Full Android 13 / Full HiOS 13 Pro**.
- **[`docs/DT2W_ICNL9916_RESEARCH.md`](docs/DT2W_ICNL9916_RESEARCH.md)** — Deep-dive hardware and kernel driver analysis of BOE `ICNL9916` (`01f1` SRAM-BOOT) In-Cell TDDi DT2W & Lockscreen DT2S.
- **[`docs/BUILD.md`](docs/BUILD.md)** — How to build the custom kernel from scratch.
- **[`docs/FLASH.md`](docs/FLASH.md)** — Flashing instructions and BROM hard-brick recovery.
- **[`docs/PITFALLS.md`](docs/PITFALLS.md)** — Critical build/ABI traps that cause bootloops or bricks.
- **[`docs/PROJECT_HANDOFF.md`](docs/PROJECT_HANDOFF.md)** & **[`NEW_CHAT_HANDOFF.md`](NEW_CHAT_HANDOFF.md)** — Complete project handoff and migration guides.

---

## Release Versions

| Tag | Contents | Notes |
|---|---|---|
| **`v7-infinity-x-3.12-a16-complete`** | **`infinity_x_bg6_ready.img.xz` + `release_assets_payload.tar.xz` + `infinity_x_3.12_gapps_vanilla_base.img.xz` + `sunno_system.img.xz` + `bg6_brom_flash_kit.tar.xz`** | **Complete Android 16 QPR2 Infinity-X v3.12 ROM + 5-Layer Undetectable GNSS Engine + TECNO Smart Caller V6 (A16 Fixed + Dual-SIM Sync + WhatsApp) + HiOS 14 File Manager + Notes + BROM Flasher** |
| **`v6-hios13-pro-dt2w`** | **`bg6_hios_pro.zip` + `dtbo_patched.img` + `dt2w_daemon`** | **Full Android 13 / HiOS 13 Pro Module + Working DT2W & Lockscreen DT2S** |
| `v5-ksu-kprobes-golden` | Kernel (`boot_a`) + `kernel_repo.bundle` | Working KernelSU v0.9.5 kernel + stock partition backups |
| `v4-ksu-golden` | Kernel | KPROBES **off** — `su` did not work |
| `v3-perf-golden` | Kernel | + BBR / ZRAM / schedutil |
| `v2-golden-baseline` | Kernel | First booting build (SCS fix) |
| `full-rom-backup` | Full 72-partition ROM (`6.06 GB`) | Complete BROM emergency restore package (`super.img.part01..04` + `rom_rest.tar.gz`) |

---

## Repository Layout

```
├── README.md
├── ROM_README.md
├── NEW_CHAT_HANDOFF.md
├── infinity_x_a16/                         [v7] Project Infinity-X v3.12 (Android 16 QPR2) Complete Suite
│   ├── IMAGE_DELTA_MANIFEST.tsv            Exact 68-entry SHA256 + mode + SELinux diff vs vanilla base GSI
│   ├── rebuild_ready_img_from_vanilla.sh   1-command byte-identical builder for infinity_x_bg6_ready.img
│   ├── signing_keys_and_avb/               avbtool.py + testkey_rsa2048.pem + AOSP platform/testkey certs
│   ├── gnss_5layer_engine/                 gnss_kernel_engine.c, framework/services Java+Smali hooks & patchers
│   ├── gnss_app_build/                     KernelGnssSettings map controller app source + APK
│   ├── smartcaller_v6_a16_patches/         SimAutoSyncHelper.java + patched ContactsLoader/ImportExport smali
│   ├── bg6_overlay_src/                    treble-overlay-tecno-bg6 RRO source + compiled APK
│   ├── core/                               bg6_perf_engine.c, init_fixed, patch_no_go*.sh, vendor_build_bg6.prop
│   └── system_image_delta_small/           All modified/added system configs, init .rc, SELinux CIL & small libs
├── shunno_os_aosp/                         [v7] AOSP / Shunno OS Source Tree Customizations
│   ├── vendor_transsion_bg6_suite/         Android.bp, bg6_suite.mk, permissions XMLs & launcher icon config
│   ├── repo_patches/                       Git diff patches for all 8 modified AOSP repositories
│   ├── repo_untracked/                     Custom Tecno BG6 hardware overlays & prebuilt configs
│   ├── lk_inc.mk
│   └── run_build.sh
├── brom_super_flasher/                     [v7] Unisoc BROM spd_dump, FDL1/2 loaders, live_super_meta.bin & scripts
├── bg6_device_reference/                   Stock BG6 fstab, lpdump, vendor build.prop, manifest & decoded RRO
├── hios14_port_tools/                      PAC unpackers & HiOS 14.5 port scripts
├── engineering_scripts/                    Complete archive of all .py/.sh/.c/.cpp/.java engineering scripts
├── docs/                                   Technical guides (Infinity-X A16, HiOS 13 Pro, DT2W, Kernel Build/Flash)
├── hios_pro_dt2w/                          [v6] dt2w_daemon.c, build_patched_dtbo.py & bg6_hios_pro module
├── scripts/                                [v5] Kernel build/repack/flash scripts
├── configs/                                [v5] Stock + golden kernel defconfigs
├── patches/                                [v5] Kernel patch series
└── forensics/                              Symbol dumps, proc_version, lsmod
```

---

## Quick Start: Flashing Android 16 QPR2 (`v7-infinity-x-3.12-a16-complete`)

1. Download `infinity_x_bg6_ready.img.xz` from [Releases](../../releases/tag/v7-infinity-x-3.12-a16-complete) and decompress:
   ```bash
   xz -dk infinity_x_bg6_ready.img.xz
   # Verify MD5: 425543fc7c09e9b8e311b25bc367c2cf (3,423,481,856 bytes)
   ```
2. Flash via `fastbootd` (or inject into `super.img` using `brom_super_flasher/`):
   ```bash
   adb reboot fastboot
   fastboot flash system_a infinity_x_bg6_ready.img
   fastboot reboot
   ```
3. See [`docs/INFINITY_X_A16_COMPLETE_GUIDE.md`](docs/INFINITY_X_A16_COMPLETE_GUIDE.md) for byte-for-byte image rebuilding, AOSP source integration, and BROM `super.img` extent flashing.

---

## Quick Start: Installing Full HiOS 13 Pro & Double-Tap to Wake (`v6-hios13-pro-dt2w`)

1. **Flash Patched `dtbo_a`**:
   ```bash
   adb push dtbo_patched.img /data/local/tmp/
   adb shell su -c "dd if=/data/local/tmp/dtbo_patched.img of=/dev/block/by-name/dtbo_a bs=4096 conv=fsync"
   ```
2. **Install `bg6_hios_pro.zip`** in KernelSU Manager (or Magisk) and reboot.

---

## Quick Start: Building the Kernel (`v5-ksu-kprobes-golden`)

```bash
git clone https://github.com/monirhossain09544/Techno-BG6.git
cd Techno-BG6
# Fetch kernel_repo.bundle from v5-ksu-kprobes-golden release:
git clone kernel_repo.bundle kernel_ums9230
cd kernel_ums9230 && git checkout v5-ksu-kprobes-golden
bash ../scripts/phase11_v5_ksu_kprobes.sh
```

---

## Credits

- Base GSI (`v7`): Project Infinity-X v3.12 (Android 16 QPR2)
- Kernel source (`v5`): [realme-kernel-opensource](https://github.com/realme-kernel-opensource/realme_C51_C53_Narzo-N53-AndroidT-kernel-source) (UMS9230 SoC)
- Root: [KernelSU](https://github.com/tiann/KernelSU) v0.9.5 by tiann
- Research & Engineering: **Monir** (`monirhossain0954@gmail.com`)
