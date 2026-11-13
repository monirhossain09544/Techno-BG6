# TECNO BG6 — Stock HiOS 13 Kernel (`v9`/`v10`), Snapshot Restore & Environment Compatibility Notes (2026-11-13)

## 1. Current Device Baseline

- **Device**: TECNO SPARK Go 2024 (`TECNO_BG6` / `BG6-OP`, Unisoc T606 `ums9230`, active slot `_a`)
- **OS Baseline**: Stock HiOS 13 / Android 13 (`TP1A.220624.014 / 250722V2387`, security patch `2025-08-05`)
- **Kernel ABI / Banner**:
  ```text
  Linux version 5.4.210-android12-9-gf8b17864a03c-ab602 (buildsrv-ci@build-1-38) (Android (7284624, based on r416183b) clang version 12.0.5 (https://android.googlesource.com/toolchain/llvm-project c935d99d7cf2016289302412d708641d52d2f7ee), LLD 12.0.5 (/buildbot/src/android/llvm-toolchain/out/llvm-project/lld c935d99d7cf2016289302412d708641d52d2f7ee)) #1 SMP PREEMPT Tue Jul 22 17:31:18 CST 2025
  ```

---

## 2. `v10` Production Kernel Build & `boot_a` Repack Summary

### Key Changes Over `v9`
- Built from `kernel_ums9230` (`5.4.210-android12-9-gf8b17864a03c-ab602`) with KMI/CFI/Shadow-Call-Stack compatibility preserved so all vendor `.ko` modules load cleanly.
- Disabled debug build flags (`CONFIG_KSU_DEBUG=n`) so debug-only strings and `ksu_debug_manager_uid` paths are absent from `vmlinux`.
- Matched the Stock HiOS 13 kernel version banner (`uname -a` / `/proc/version`) to avoid userspace banner mismatches with stock vendor HALs.
- Repacked into a `67,108,864`-byte (`64 MiB`) `boot_a` image preserving the unmodified Stock HiOS 13 ramdisk and original `AVBf` trailer (`40,288,256` offset boundary).

### Verified Local Artifacts & SHA-256 Checksums
| Artifact | Size (Bytes) | SHA-256 | Local Path |
| :--- | ---: | :--- | :--- |
| `Image_v10_ksu_prod` | `38,453,760` | `67d7adcf8cab06bb1ab5369fd26ad2397c065f641d8b40dcddc122a00715ee88` | Antigravity session `scratch/Image_v10_ksu_prod` |
| `bg6_boot_a_v10_ksu_avbf.img` | `67,108,864` | `fc14320449a27541272ecd97e71c352eb22712305b1ba804b357468214e236ce` | `C:\Users\Monir\Documents\deepseek-harness\default-workspace\tecno_bg6_kernel\bg6_boot_a_v10_ksu_avbf.img` |
| `bg6_boot_a_v9_ksu_avbf.img` | `67,108,864` | `1fdf6f762d6ecda91f92170d0f0246d514b508c157a0c83c29991b2440a4657c` | `C:\Users\Monir\Documents\deepseek-harness\default-workspace\tecno_bg6_kernel\bg6_boot_a_v9_ksu_avbf.img` |

---

## 3. BROM & Fastboot Flashing Notes (`ums9230`)

- **Standard Fastboot Flash (when bootloader is already unlocked)**:
  ```powershell
  adb reboot bootloader
  fastboot flash boot_a bg6_boot_a_v10_ksu_avbf.img
  fastboot reboot
  ```
- **Unisoc BROM Recovery (`spd_dump`)**:
  - Used only when recovering from an unbootable `boot_a` or transitioning bootloader lock state (`fdl1-sign.bin` @ `0x65000800`, `fdl2-sign.bin` @ `0x9efffe00`).
  - Note that transitioning between locked and unlocked bootloader states triggers Android Recovery's mandatory `userdata` factory reset; always verify backups before changing lock state.

---

## 4. Snapshot Backup & Restore Architecture (`BG6_Night_Root_Snapshot_20261113`)

Local snapshot directory on host PC:
`C:\Users\Monir\.gemini\antigravity\scratch\BG6_Night_Root_Snapshot_20261113`

### Important Restore Implementation Details
1. **ADB / Fastboot Path Detection**:
   - On this Windows host, platform-tools are installed under `C:\Users\Monir\Android\Sdk\platform-tools\` (check both `%LOCALAPPDATA%\Android\Sdk\platform-tools` and `%USERPROFILE%\Android\Sdk\platform-tools` in automation scripts).
2. **Split APK Installation**:
   - Multi-split apps in `apks/<pkg>/` must be installed via `adb install-multiple -r -d <base.apk> <split_*.apk>` rather than single-file `adb install`.
3. **KernelSU `.allowlist` UID Remapping**:
   - Reinstalling APKs after a wipe assigns fresh Linux UIDs in `/data/system/packages.list`.
   - KernelSU `.allowlist` (header magic `0x7F4B5355`, version `3`, `776`-byte fixed records after the 8-byte header) stores package name at `record_offset + 4` (`256` bytes) and `int32` UID at `record_offset + 260`.
   - Restore scripts must remap each saved package's UID to its current `/data/system/packages.list` entry before writing `/data/adb/ksu/.allowlist` (`0644`, `u:object_r:adb_data_file:s0`).
4. **`modules.img` Sparse Loop Image**:
   - Format `/data/adb/ksu/modules.img` with `/system/bin/mke2fs -t ext4 -O ^has_journal -F` (`u:object_r:adb_data_file:s0`), mount with `loop,rw,seclabel`, extract module tree, apply `chcon -R u:object_r:system_file:s0`, and `umount` cleanly prior to reboot.
5. **App Data (`CE` & `DE`) Ownership & SELinux**:
   - After extracting `<pkg>_ce.tar.gz` -> `/data/data/<pkg>` and `<pkg>_de.tar.gz` -> `/data/user_de/0/<pkg>`, run `chown -R <uid>:<uid>`, fix `cache`/`code_cache` group (`<uid>_cache`), and run `restorecon -RF`.

---

## 5. Environment Compatibility Findings (Clean Locked Stock vs Unlocked Custom Kernel)

Comparative testing on the same physical `TECNO_BG6` hardware between **Clean Official Stock HiOS 13 (Locked Bootloader)** and **Unlocked Custom Kernel (`v9`/`v10` Rooted)** established the following:

1. **Clean Official Stock ROM + Locked Bootloader (`verifiedbootstate=green`)**:
   - Passes native hardware-backed attestation, bootloader lock verification, and commercial app integrity checks out of the box without any system modifications.
   - Confirmed working via the clean stock workflow (`ONE_CLICK_DAY_CLEAN_STOCK.bat`).
2. **Unlocked Bootloader / Rooted Custom Kernel (`verifiedbootstate=orange`)**:
   - Commercial applications that combine hardware attestation, device-property cross-checks, and dedicated environment/anti-tamper verification detect modified or unlocked environments and deny access (`403` / unauthorized app errors).
   - **Recommended Practice**: Use unmodified Stock HiOS 13 with a locked bootloader whenever running production/commercial apps that enforce strict device integrity, and reserve custom `v9`/`v10` kernels strictly for development and testing workflows.

---

## 6. Pending Device State Housekeeping

On the currently connected `TECNO_BG6` (`v10` kernel):
1. Unhide manager/utility packages hidden during testing if staying on the development setup:
   ```sh
   adb shell su -c "pm unhide me.weishu.kernelsu; pm unhide com.dergoogler.mmrl"
   ```
2. Either:
   - Run the clean Stock ROM + bootloader lock workflow (`ONE_CLICK_DAY_CLEAN_STOCK.bat`) for normal daily app usage, **or**
   - Complete restoration of personal user apps (`com.ea.gp.fifamobile`, `com.facebook.katana`, `com.facebook.orca`) and `/sdcard` archive (`sdcard_full.tar.gz`) from `BG6_Night_Root_Snapshot_20261113`.
