# Project Infinity-X v3.12 (Android 16 QPR2) — TECNO BG6 Complete Engineering Guide (`v8.0` Whole-Rust + `v7`)

Complete architecture, Whole-Rust 2026 Ring-0/eBPF/Wasm/Zig/BOLT stack, source-code layout, byte-for-byte image rebuild instructions, and direct Unisoc BROM/Fastbootd flashing guide for **Project Infinity-X v3.12 (`Android 16 QPR2 / BP4A.251205.006`)** on the **TECNO SPARK Go 2024 (`TECNO-BG6`, Unisoc T606 / `ums9230`)**.

---

## 0. Whole-Rust 2026 Custom Kernel & System Engine (`v8-whole-rust-a16-complete` — `infinity_x_a16/rust_core/`)

1. **Crate 1 — Ring-0 `#![no_std]` In-Kernel Rust Engine (`kernel_ring0/` + `c_shim/shim.c` -> `drivers/bg6_rust/` in `5.4.210` `vmlinux`)**:
   - Target: `aarch64-unknown-none-softfloat` (`-Z fixed-x18`, `-Z sanitizer=shadow-call-stack`, `+strict-align`, panic-free raw-cursor formatter with zero `core::panicking` / zero `R_AARCH64_ABS64` relocations).
   - Runs a 2-layer Fixed-Point `Q16.16` TinyML neural workload classifier inside Ring-0, sampling `chipone-tddi` touch velocity, `avenrun` CPU load, `nr_running`, and thermal millidegrees via `TIMER_DEFERRABLE` (0% deep-sleep battery drain), exposed at `/proc/bg6_rust_engine` (`0640 root:shell`).
   - Preserves exact KMI release `5.4.210-android12-9-gf8b17864a03c-ab602` (`buildsrv-ci@build-1-38`), loading all 195 OEM `.ko` modules with `CONFIG_SHADOW_CALL_STACK=y`, `CONFIG_LTO_CLANG=y`, `CONFIG_CFI_CLANG=y`, `CONFIG_MODVERSIONS=y`, and `CONFIG_KSU` disabled (`verifiedbootstate=green`, zero `su` exposed).
2. **Crate 2 — Live ARM64 JIT `#![no_std]` Rust `eBPF` (`bg6_ebpf/` -> `/system/etc/bg6/bg6_ebpf.o`)**:
   - Compiled via `cargo +nightly --target bpfel-unknown-none -Z build-std=core -- --emit=llvm-bc` + `rustlib` `llc -march=bpfel -mcpu=v2 -filetype=obj` into a strict Linux 5.4 BPF ISA v2 ELF64 object (`cgroup_skb/egress`, `cgroup_skb/ingress`, `kprobe/wake_up`, 16-slot `BG6_TELEMETRY_MAP`).
   - Loaded into Ring-0 ARM64 JIT (`572B` + `440B` + `304B`) by `ebpf_loader.rs` using direct `SYS_bpf` (`280`) and `SYS_perf_event_open` (`241`) syscalls (zero C `libbpf`).
3. **Crate 3 — Sandboxed `#![no_std]` WebAssembly Policy (`bg6_wasm_policy/` -> `/system/etc/bg6/bg6_policy.wasm`)**:
   - Compiled to `wasm32-unknown-unknown` (`495` bytes) and executed inside a fuel-metered `wasmi` `v0.40` interpreter (`wasm_engine.rs`) with live zero-reboot hot-reload support via `/mnt/phh/bg6_policy.wasm`.
4. **Crate 4 — Polyglot `Zig 0.13.0` + `Clang LTO` + `LLVM BOLT` Userspace Multicall Core (`bg6_rust_core/` -> `/system/bin/bg6_rust_core` & `/system/bin/bg6-rust-ctl`)**:
   - Links `zig/bg6_zig_accel.zig` (`mrs cntvct_el0` hardware cycle timer + 64-bit FNV1a hash) with Rust `lto = "fat"` and post-link AOSP `llvm-bolt` (`-use-old-text -icf=1 -elim-link-veneers=true -peepholes=all`; note: never run `llvm-strip` after `llvm-bolt` on Android Bionic PIE).
   - Physically replaces 100% of legacy custom C daemons and shell scripts (`0` custom C binaries, `0` custom `.sh` scripts in `/system/bin/`). Run `adb shell bg6-rust-ctl` anytime to view the live Ring-0 + eBPF + Wasm + Zig + GNSS dashboard.

---

## 1. What Was Established in `v7-infinity-x-3.12-a16-complete` (Preserved 100% in `v8.0`)

### A. 5-Layer Undetectable Kernel & Framework GNSS Location Engine (`infinity_x_a16/gnss_5layer_engine/` & `gnss_app_build/`)
1. **Layer 1 — Native Daemon (`gnss_kernel_engine.c` -> `/system/bin/gnss_kernel_engine` + `/system/bin/kernel-gps`)**:
   - Reads live target coordinates, bearing, speed, altitude, accuracy, and route state; generates realistic GPS jitter, NMEA sentences, and multi-constellation GNSS satellite status (`GPS`, `GLONASS`, `BDS`, `GALILEO`).
2. **Layer 2 — Framework Location Hooks (`framework.jar` / `java_src/` & `hook_smali/`)**:
   - Strips `isFromMockProvider()` / `Location.isMock()` flags at the `android.location.Location` & `LocationManager` level so zero mock-location indicators are exposed to ride-sharing, delivery, or banking apps.
3. **Layer 3 — System Server GNSS & Fused Provider Injection (`services.jar` / `patch_services.py`)**:
   - Injects hardware-grade `LocationManagerService` & GNSS provider updates directly inside `system_server` without requiring Developer Options `"Select mock location app"`.
4. **Layer 4 — Wi-Fi / Telephony Cell-Tower & Settings Stealth**:
   - Prevents Wi-Fi scan / neighboring cell-info cross-checks from contradicting active GNSS coordinates and keeps `mock_location=0` clean.
5. **Layer 5 — Interactive Controller App (`KernelGnssSettings.apk` -> `/system/app/KernelGnssSettings/`)**:
   - Built-in map UI (`assets/index.html` + `MainActivity.java`) for selecting pins, searching places, and toggling the engine live.

---

### B. Official TECNO BG6 Native System Apps & Android 16 Patches (`infinity_x_a16/smartcaller_v6_a16_patches/` & `shunno_os_aosp/vendor_transsion_bg6_suite/`)
Stock AOSP/Infinity-X `Dialer` (`com.android.dialer`) and `Contacts` (`com.android.contacts`) are **physically removed** from both the ROM image and the AOSP source tree (`device/phh/treble/base.mk`), and replaced permanently with TECNO's native suite:

1. **TECNO Smart Caller & Contacts (`SmartCaller.apk`, `com.sh.smart.caller` V6.0.1.123 — Android 16 Patched)**:
   - Retains the official green Dual-SIM (`1 | 2`) call pill, circular green **WhatsApp** direct-chat button on the dialpad, and built-in **Call Recordings**.
   - **Fix 1 — `"The contact doesn't exist"` (`Contacts.Entity` 63-column AOSP alignment)**:
     - Patched `smali_classes.dex/tv$b.smali` and `tv.smali` (`ContactLoader`) to remove Unisoc's proprietary 64th column `"is_read_only"` (index `0x3f`), matching Android 16's exact 63-column `ContactsProvider2` `Contacts.Entity` projection so Contact Details, WhatsApp shortcut, Call Recordings, and Edit Contact open cleanly.
   - **Fix 2 — Android 16 `Import/Export Contacts` Crash (`StorageVolume` hidden API removal)**:
     - Patched `smali_classes2.dex/hp0.smali` (lines 1369, 1377, 1666) to replace removed `StorageVolume.getPath()` / `getPathFile()` calls with public Android 16 `StorageVolume.getDirectory()` + `File.getAbsolutePath()`, and mapped SIM columns cleanly in `oz2.smali`.
   - **Fix 3 — Automatic Dual-SIM USIM/ADN Contact Sync (`SimAutoSyncHelper.java`)**:
     - Authored `com.transsion.contacts.SimAutoSyncHelper` (`sim_helper_src/com/transsion/contacts/SimAutoSyncHelper.java`), compiled into `smali_classes2.dex`, and hooked into `PeopleActivity.onCreate` and `DialerApplication.onCreate`. Automatically queries Android 16 `SimPhonebookProvider` (`content://com.android.simphonebook/subid/<id>/adn`) and `IccProvider` (`content://icc/adn/subId/<id>`) across SIM 1 & SIM 2 and imports USIM contacts into `ContactsProvider` with full duplicate prevention.
2. **TECNO HiOS 14 System File Manager (`TranssionFileManager.apk`, `com.transsion.filemanagerx` v17.0.0.104)**:
   - Official clean system variant (**zero ads**), bundled with 64-bit native libraries (`lib7-Zip-JBinding.so`, `libmmkv.so`, `libtiff*.so`), plus `launcher_documentsui_icon_disable.xml` to suppress duplicate AOSP Files launcher icon while keeping SAF `DocumentsUI` picker intact.
3. **TECNO Notes (`TranssionNote.apk`, `com.transsion.notebook` v2.5.1.718)**.

---

### C. Unisoc BG6 Boot, Full-RAM (Non-Go) & Performance Engine (`infinity_x_a16/core/` & `bg6_overlay_src/`)
- **`init_fixed` (`/system/bin/init`)**: Patched Android 16 `init` binary required for Unisoc BG6 dynamic partition mounting and boot.
- **Full Android 16 (Non-Go) Conversion**: Injects `android.hardware.ram.normal.xml`, sets `ro.config.low_ram=false`, enables full recents/multi-window/split-screen, `trust_warnings=0`, `navigation_bar_hint=0`, and `navbar_ime_space=0`.
- **`bg6_perf_engine` (`/system/bin/bg6_perf_engine` + `/system/bin/bg6-perf-tune.sh` + `/system/etc/init/init.bg6.rc`)**: Configures 4 GB Physical RAM + 4 GB LZ4 ZRAM, `schedutil` governor tuning, SurfaceFlinger frame pacing, and I/O queue optimizations.
- **`treble-overlay-tecno-bg6.apk` (`bg6_overlay_src/`)**: Custom RRO hardware overlay matching TECNO BG6 display cutout, status bar height, calibrated 18-level brightness curves, 90Hz refresh rate, color modes, and `power_profile.xml`.

---

### D. Complete 6-Subsystem Display, Color Matrix, 90Hz, Blur & `ICNL9916` DT2W Engine (`infinity_x_a16/display_engine/`)
1. **`SurfaceFlinger` ARM64 Binary Patch (`patch_surfaceflinger_bg6.py` -> `/system/bin/surfaceflinger`)**:
   - **Root Cause Fixed**: On Unisoc T606 (`ums9230`), `persist.sys.phh.unisoc_color_transform_workaround=1` suppresses HWC2's broken `setColorTransform` ioctl (which otherwise causes a black screen), leaving `CompositionEngine` on hardware DPU composition with `SKIP_CLIENT_COLOR_TRANSFORM` active—causing **Night Light**, **Extra Dim**, **LiveDisplay**, **Colors**, **Color Correction**, and **Color Inversion** to have zero visual effect.
   - **4-Site ELF RX Patch**:
     - `Display::getSkipColorTransform()` (`0x51d350`): Patched to `mov w0, #0; ret` so Skia `RenderEngine` never skips `colorTransformMatrix`.
     - `SurfaceFlinger::updateColorMatrixLocked()` (`0x35be70` -> cave `0x854400`): Dynamically inspects all 16 floats of `mCurrentState.colorMatrix`—automatically keeping `mDebugDisableHWC = 0` (**pure 90Hz hardware DPU composition**) when `colorMatrix == Identity`, and switching `mDebugDisableHWC = 1` (**90Hz Mali-G57 Skia GPU client composition**) whenever any non-identity color matrix is active.
     - `SurfaceFlinger::updateColorMatrixLocked()` (`0x35bc10` -> cave `0x854380`) & `onTransact` `case 1023` (`0x35ae50` -> cave `0x8543c0`): Native `1.25x` (`Saturated`) and `1.125x` (`Adaptive`) color-mode saturation multipliers with immediate lock-safe matrix refresh.
2. **90Hz Default Refresh Rate & GPU Frame Pacing**:
   - Unlocked native `720x1612 @ 90.00 Hz` (`hwcId=1`) + `60.00 Hz` switching by removing `persist.vendor.hwc.display.modeid=0`, setting `config_defaultRefreshRate=90` / `config_defaultPeakRefreshRate=90` in `treble-overlay-tecno-bg6.apk`, and tuning Mali-G57 `polling_interval=10` in `bg6_perf_engine.c`.
3. **Calibrated 18-Step Adaptive Brightness (`ls9801i` -> `sprd_backlight` `0..4095`)**:
   - Replaced stock 5-point Go-edition table with a monotonically smooth 18-step ambient lux (`2..10000 lux`) / 19-value display nits (`5.8..363.6 nits`) curve with `2000ms` brightening / `4000ms` darkening debounce.
4. **Kawase Dual-Filter V2 Window-Level Blurs**:
   - Enabled `persist.sys.sf.disable_blurs=0` and `disable_window_blurs=0` across Quick Settings, Notification Shade, Lockscreen PIN Bouncer, and system dialogs with full `Blur intensity` (`0%..200%`) slider control.
5. **Hardware-Safe `ICNL9916` (`01f1` Flashless SRAM-BOOT) Tap to Wake & Tap to Sleep (`bg6_dt2w_daemon.c`)**:
   - Bind-mounts `/dev/dt2w_state` (`cc0`) over `/proc/gesture_function` to protect BOE `ICNL9916` volatile SRAM touch firmware from reset wipes, synchronizes `/sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable` with `Settings.Secure.DOUBLE_TAP_TO_WAKE`, provides <5ms Double-Tap to Wake, Lockscreen/Home Double-Tap to Sleep, Standby CPU Power-Save, and automatic screen wake on incoming SIM/VoIP calls (`MODE_RINGTONE`), alarms (`USAGE_ALARM`), and USB charger plug/unplug (`Wake on plug`).

---

## 2. Rebuilding `infinity_x_bg6_ready.img` Byte-for-Byte from Scratch

Even without an AOSP build server, you can either download the ready-to-flash **`infinity_x_bg6_ready.img.xz`** directly from GitHub Releases (`v7-infinity-x-3.12-a16-complete`), **or** reconstruct it byte-for-byte from the vanilla `infinity_x_3.12_gapps.img`:

```bash
# 1. Extract vanilla base image and release_assets_payload.tar.xz
xz -dk infinity_x_3.12_gapps_vanilla_base.img.xz
mkdir -p release_assets
tar -xJf release_assets_payload.tar.xz -C release_assets

# 2. Run the automated byte-for-byte delta builder (applies all 68 manifest operations + SELinux xattrs + AVB SHA256_RSA2048 footer)
sudo bash infinity_x_a16/rebuild_ready_img_from_vanilla.sh \
    infinity_x_3.12_gapps_vanilla_base.img \
    release_assets \
    infinity_x_bg6_ready.img

# 3. Verify exact MD5 (3,423,481,856 bytes)
md5sum infinity_x_bg6_ready.img
# Expected: 9e92b1a23f74602c8b3ccf8defa23e37
```

---

## 3. Integrating into an AOSP / GSI Source Tree (`shunno_os_aosp/`)

To apply all TECNO BG6 and Shunno OS source changes onto a fresh AOSP/Treble tree:

1. Copy `shunno_os_aosp/vendor_transsion_bg6_suite/` to `vendor/transsion/bg6_suite/` and place `SmartCaller.apk`, `TranssionFileManager.apk`, and `TranssionNote.apk` (from Release `release_assets_payload.tar.xz`) into `vendor/transsion/bg6_suite/prebuilt/`.
2. Copy `shunno_os_aosp/repo_untracked/` into their corresponding paths (`device/phh/treble/`, `vendor/hardware_overlay/Tecno/BG6*`).
3. Apply the git patches in `shunno_os_aosp/repo_patches/`:
   ```bash
   git -C device/phh/treble apply /path/to/Techno-BG6/shunno_os_aosp/repo_patches/device__phh__treble.patch
   git -C frameworks/base apply /path/to/Techno-BG6/shunno_os_aosp/repo_patches/frameworks__base.patch
   git -C packages/apps/Launcher3 apply /path/to/Techno-BG6/shunno_os_aosp/repo_patches/packages__apps__Launcher3.patch
   git -C packages/apps/Settings apply /path/to/Techno-BG6/shunno_os_aosp/repo_patches/packages__apps__Settings.patch
   git -C vendor/hardware_overlay apply /path/to/Techno-BG6/shunno_os_aosp/repo_patches/vendor__hardware_overlay.patch
   ```

---

## 4. Flashing `infinity_x_bg6_ready.img` into `super.img` / Phone (`brom_super_flasher/`)

### Method A: Fastbootd (`fastboot` logical partition flash)
```bash
adb reboot fastboot
fastboot flash system_a infinity_x_bg6_ready.img
fastboot reboot
```

### Method B: Direct `super.img` Extent Injection + Unisoc BROM (`spd_dump`)
When updating `super.img` offline or recovering via BROM (`SPRD U2S Diag` — hold **Vol Up + Vol Down** while plugging USB):
1. Use `engineering_scripts/bake_and_sync_fixed_smartcaller.py` (or `brom_direct_patch_super.py`) with `brom_super_flasher/live_super_meta.bin` to write `infinity_x_bg6_ready.img` directly into `system_a`'s exact physical `lp_metadata` sector extents inside `super.img`.
2. Flash `super.img` (or individual changed segments) via `brom_super_flasher/spd_dump.exe` using `fdl1-dl.bin`, `fdl2-dl.bin`, and `custom_exec_no_verify_65015f08.bin`.
