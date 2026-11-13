# TECNO BG6 — Complete Engineering Log, Kernel `v9`/`v10`, Snapshot Architecture & Rider (`IAL403`) Deep-Dive Analysis (`2026-11-13` – `2026-11-14`)

This document records the complete engineering work, controlled A/B hardware experiments, custom kernel (`v9` & `v10`) patches, Linux mount-namespace discoveries, Android Keystore2 / Remote Key Provisioning (RKP) forensics, snapshot backup/restore tooling, and the full architectural investigation into commercial app environment verification (`com.logistics.rider.foodpanda` v4.2646.3 / `IAL403: Unauthorized Rider App`) on the **TECNO SPARK Go 2024 (`TECNO_BG6` / `BG6-OP`, Unisoc T606 `ums9230`)**.

---

## Table of Contents

1. [Device, OS & Build Baseline](#1-device-os--build-baseline)
2. [Chronology of All Engineering Work Completed](#2-chronology-of-all-engineering-work-completed)
3. [Controlled A/B Hardware Experiment: Clean Locked Stock vs Unlocked Rooted (`v9`/`v10`)](#3-controlled-ab-hardware-experiment-clean-locked-stock-vs-unlocked-rooted-v9v10)
4. [Kernel Engineering: `v9` & `v10` Production Builds (`5.4.210`)](#4-kernel-engineering-v9--v10-production-builds-54210)
5. [Linux VFS Mount Propagation Discovery (`MS_SHARED` vs `--make-rslave`)](#5-linux-vfs-mount-propagation-discovery-ms_shared-vs---make-rslave)
6. [System Property Forensics, `<queries>` Visibility & `monkey` Tombstone Behavior](#6-system-property-forensics-queries-visibility--monkey-tombstone-behavior)
7. [Rider App (`com.logistics.rider.foodpanda` v4.2646.3) Security Architecture & `IAL403` Findings](#7-rider-app-comlogisticsriderfoodpanda-v426463-security-architecture--ial403-findings)
8. [Keystore2 (`persistent.sqlite`), RKP (`OID 1.3.6.1.4.1.11129.2.1.30`) & Certificate Chain Cross-Checks](#8-keystore2-persistentsqlite-rkp-oid-136141111292130--certificate-chain-cross-checks)
9. [Daemon In-Memory Key Cache Bug After `pm clear` & SELinux Shell Transition](#9-daemon-in-memory-key-cache-bug-after-pm-clear--selinux-shell-transition)
10. [Dual-Mode Workflow: One-Click Clean Stock Lock & One-Click Rooted Snapshot Restore](#10-dual-mode-workflow-one-click-clean-stock-lock--one-click-rooted-snapshot-restore)
11. [Repository File Index Added in This Session](#11-repository-file-index-added-in-this-session)

---

## 1. Device, OS & Build Baseline

| Parameter | Value |
| :--- | :--- |
| **Device / Marketing Name** | TECNO SPARK Go 2024 (`TECNO-BG6` / `BG6-OP`) |
| **SoC / Platform** | Unisoc T606 (`ums9230`, ARMv8.2-A `2x Cortex-A75 + 6x Cortex-A55`) |
| **Active Slot** | `_a` |
| **Stock OS Baseline** | Stock HiOS 13 / Android 13 (`TP1A.220624.014 / 250722V2387`) |
| **Stock Security Patch** | System/Boot: `2025-08-05` (`202508`), Vendor: `2024-05-05` |
| **Factory `vbmeta_a` Digest** | `ccf0292211827a53570d0f61f4eb724258987f0a76c18a990e0f3c9421d352f1` |
| **Exact Stock Kernel Banner** | `Linux version 5.4.210-android12-9-gf8b17864a03c-ab602 (buildsrv-ci@build-1-38) (Android (7284624, based on r416183b) clang version 12.0.5 (...), LLD 12.0.5 (...)) #1 SMP PREEMPT Tue Jul 22 17:31:18 CST 2025` |

---

## 2. Chronology of All Engineering Work Completed

1. **Full Rooted Snapshot Backup (`BG6_Night_Root_Snapshot_20261113`, `1.78 GB`)**:
   - Backed up all user APKs (base + split APKs with manifest metadata), CE (`/data/data/<pkg>`) and DE (`/data/user_de/0/<pkg>`) app data archives, `/data/adb` host scripts & configs, `/data/adb/modules` ext4 tree, KernelSU `.allowlist` v3 binary database, and full `/sdcard` (`sdcard_full.tar.gz`) to both local PC storage and remote build storage.
2. **Pure Factory Stock Restoration + Green Bootloader Relock Verification**:
   - Built `winusb_fastboot.py` (native Windows `WinUSB` + `SetupAPI` raw USB bulk-pipe Fastboot client) and `clean_unroot_stock_and_lock.py` (cryptographic `vbmeta_a.img` chain public-key verifier for `boot_a.bin` + automated `flashing lock_bootloader`).
   - Verified on physical hardware that locking the bootloader with pure factory `boot_a.bin` (`verifiedbootstate=green`) allows `com.logistics.rider.foodpanda` (`v4.2646.3`, build `1373`) to pass `bd.usehurrier.com/api/iam-login/v2/forgot_password` immediately (`"Check your email"`).
   - Captured clean factory ground-truth baselines (`bg6_hios13_locked_stock_getprop.txt`, `bg6_hios13_locked_stock_mounts.txt`, `bg6_hios13_locked_stock_filesystems.txt`).
3. **Unisoc BROM AutoDloader Unlock & Recovery Automation**:
   - Verified reliable bootloader re-unlock via `spd_dump.exe` (`fdl1-sign.bin @ 0x65000800`, `fdl2-sign.bin @ 0x9efffe00`, `wof miscdata 8192 m.bin`, `reboot-fastboot`) without touching `super` or other factory partitions.
4. **Custom Kernel `v9` (`e1a8ab1a5`) & `v10` (`265ca4ebb`) Development & Repacking**:
   - Compiled `5.4.210-android12-9-gf8b17864a03c-ab602` with Clang `12.0.5` (`r416183b`), preserving full KMI/CFI/Shadow-Call-Stack/LTO/MODVERSIONS ABI compatibility across all 195 stock vendor `.ko` modules.
   - Eliminated debug symbols (`# CONFIG_KSU_DEBUG is not set`), matched the byte-exact Stock HiOS 13 `/proc/version` banner, fixed `throne_tracker.c` breadth-first `/data/app` scanning, backported `path_umount` in `fs/namespace.c`, and added `v10` unconditional `ksu_cred` Zygote mount detachment (`MNT_DETACH`).
   - Repacked `bg6_boot_a_v10_ksu_avbf.img` (`67,108,864` bytes, `SHA-256: fc14320449a27541272ecd97e71c352eb22712305b1ba804b357468214e236ce`) preserving the 100% unmodified factory ramdisk (`1,566,288` bytes) and `AVB0` + `AVBf` trailer (`0x266C000`).
5. **Userspace Environment Isolation & Deep-Dive App/Keystore Forensics**:
   - Solved Linux `MS_SHARED` mount-propagation side effects in `zygote64`/`zygote`/`webview_zygote` using `--make-rslave /`.
   - Audited system property diffs, `<queries>` package visibility (`me.weishu.kernelsu`), Firebase Remote Config (`frc_..._firebase_activate.json`), native libraries (`libtoolChecker.so`, `libsigner.so`, `libe761.so`), Keystore2 `/data/misc/keystore/persistent.sqlite`, RKP X.509 CBOR extensions (`OID 1.3.6.1.4.1.11129.2.1.30`), and keystore interception cache behavior.

---

## 3. Controlled A/B Hardware Experiment: Clean Locked Stock vs Unlocked Rooted (`v9`/`v10`)

Testing the exact same rider account and workflow (`Bangladesh` -> `Sign in` -> `Forgot password?` -> `EMAIL` -> `Reset Password` -> `POST https://bd.usehurrier.com/api/iam-login/v2/forgot_password`) on the **exact same physical phone (`TECNO_BG6`)** isolated the behavior cleanly:

| Test Condition | Bootloader & `boot_a` | Play Integrity (`BASIC` / `DEVICE` / `STRONG`) | Rider App Result (`/api/iam-login/v2/forgot_password`) |
| :--- | :--- | :--- | :--- |
| **Condition A: Pure Factory Stock** | **Locked** (`verifiedbootstate=green`), unmodified `boot_a.bin` | `3/3` Native Hardware RKP (`TECNO` `APPROVED`) | **PASS** (`200 OK` -> `"Check your email"`) |
| **Condition B: Unlocked + `v10` Kernel** | **Unlocked** (`verifiedbootstate=orange`), `bg6_boot_a_v10_ksu_avbf.img` + clean Zygote mounts + no root manager APKs | `3/3` (`BASIC`, `DEVICE`, `STRONG` all green via third-party keybox) | **BLOCKED** (`403` -> `"IAL403: Unauthorized Rider App"`) |

**Key Takeaway**: Neither the rider account nor the physical `TECNO_BG6` hardware/IP was permanently banned — on clean locked factory firmware, the server accepted the request immediately. The `IAL403` block is triggered specifically by server-side evaluation of the device integrity/anti-fraud payload attached to IAM API requests.

---

## 4. Kernel Engineering: `v9` & `v10` Production Builds (`5.4.210`)

Both kernel patches are stored in [`patches/`](../patches/) alongside [`configs/bg6_golden_v9_v10_prod_defconfig`](../configs/bg6_golden_v9_v10_prod_defconfig):

### 4.1 `v9` Patch (`patches/0005-v9-ksu-prod-path-umount-throne-tracker.patch`, commit `e1a8ab1a5`)
- **Non-Git KernelSU Version Fix (`drivers/kernelsu/Makefile`)**: Sets `-DKSU_VERSION=11872` (`v0.9.5` release) instead of fallback `16` when building outside a `.git` submodule.
- **`path_umount` Backport (`fs/namespace.c`, `include/linux/fs.h`)**: Backports `can_umount()` and `path_umount()` to Linux `5.4.210` so KernelSU's kernel-level mount detachment works natively without userspace `umount` helpers, and fixes leaked `path_put(&path)` references in `try_umount()`.
- **`throne_tracker.c` Overhaul (`drivers/kernelsu/throne_tracker.c`)**:
  - Replaces broken single-list depth loop with a proper two-queue breadth-first search (`curr_list` / `next_list`) to depth `3` (`/data/app/~~random==/<pkg>-random==/base.apk`).
  - Handles `DT_UNKNOWN` directory entries on ext4/f2fs while skipping `.apk`/`.prof`/`.idsig` regular files and `oat`/`lib` subdirectories.
  - Falls back from `/data/system/packages.list.tmp` to `/data/system/packages.list` when `packages.list.tmp` does not exist on boot (`on_post_fs_data` & `boot_complete`).
  - Serializes scans with `ksu_throne_tracker_mutex` and schedules `renameat` updates asynchronously on `ksu_workqueue` (`ksu_schedule_track_throne()`), adding `dac_read_search` + `apk_data_file` SELinux permissions for the `kernel` domain.

### 4.2 `v10` Patch (`patches/0006-v10-unconditional-zygote-mount-isolation-ksu-cred.patch`, commit `265ca4ebb`)
- **Bug Fixed from `v9`**: In upstream KernelSU `0.9.5`, `ksu_handle_setuid()` returned `0` immediately at the top of the function whenever `ksu_module_mounted == false` (or when `uid` was an isolated WebView process `90000..99999` / `webview_zygote` `1053`), leaving `/data/adb/modules` and `/debug_ramdisk` visible in `/proc/self/mountinfo` for app/WebView processes!
- **`v10` Fix**:
  - Initializes `ksu_cred = prepare_kernel_cred(NULL)` in `ksu_core_init()` and grants `kernel` SELinux `filesystem { unmount }` permissions.
  - Covers both standard app UIDs (`10000..19999`) and isolated/WebView UIDs (`90000..99999`, `1053`) forked from Zygote (`is_zygote(old->security)`), while strictly guarding `init_nsproxy.mnt_ns` so PID 1's global mount namespace is never unmounted.
  - Unconditionally detaches `/data/adb/modules`, `/debug_ramdisk`, and `/sbin` (`MNT_DETACH`) under `override_creds(ksu_cred)`.

### 4.3 Verified Build Artifacts
| Artifact | Size (Bytes) | SHA-256 |
| :--- | ---: | :--- |
| `Image` (`v10` ARM64 kernel) | `38,453,760` | `67d7adcf8cab06bb1ab5369fd26ad2397c065f641d8b40dcddc122a00715ee88` |
| `bg6_boot_a_v10_ksu_avbf.img` | `67,108,864` | `fc14320449a27541272ecd97e71c352eb22712305b1ba804b357468214e236ce` |
| `bg6_boot_a_v9_ksu_avbf.img` | `67,108,864` | `1fdf6f762d6ecda91f92170d0f0246d514b508c157a0c83c29991b2440a4657c` |

---

## 5. Linux VFS Mount Propagation Discovery (`MS_SHARED` vs `--make-rslave`)

During mount-table auditing of `zygote64`, `zygote`, and `webview_zygote`:
- On Android 13, root `/` in `init` (`PID 1`) is mounted as a shared peer group (`shared:1`), and `zygote64` inherits `shared:1` propagation on `/` until isolated.
- Running `nsenter -t $(pidof zygote64) -m -- umount -l /data/adb/modules` **without** changing mount propagation first causes the Linux VFS to propagate the `umount` event **upward into `PID 1`'s global mount namespace**, detaching `/data/adb/modules` across the entire OS and breaking root daemons that read `/data/adb/modules/*`!
- **Verified Solution**: Convert `/` inside each Zygote mount namespace to a one-way slave mount (`--make-rslave /`) **before** unmounting:
  ```sh
  for z in $(pidof zygote64 zygote webview_zygote); do
      nsenter -t "$z" -m -- /system/bin/mount --make-rslave /
      nsenter -t "$z" -m -- /system/bin/umount -l /data/adb/modules 2>/dev/null || true
      nsenter -t "$z" -m -- /system/bin/umount -l /debug_ramdisk 2>/dev/null || true
  done
  ```
- **Verified Result**: `/data/adb/modules` remains mounted in `PID 1` (`init`), while `zygote64`, `zygote`, `webview_zygote`, and all forked application processes have **zero** `/data/adb`, `KSU`, or `debug_ramdisk` entries in `/proc/<pid>/mountinfo`.

---

## 6. System Property Forensics, `<queries>` Visibility & `monkey` Tombstone Behavior

### 6.1 Stock vs Unlocked Property Diffs
Comparing `bg6_hios13_locked_stock_getprop.txt` against unlocked boot state identified several property differences:
- Bootloader/AVB properties exposed when unlocked or modified: `ro.boot.vbmeta.invalidate_on_error`, `ro.boot.vbmeta.public_key_digest`, `sys.oem_unlock_allowed`.
- Logging properties set by module scripts: `persist.logd.size`, `persist.logd.size.crash`, `persist.logd.size.main`, `persist.logd.size.system`.
- Security patch overrides: Global overrides setting `ro.build.version.security_patch=2026-02-05` caused a mismatch against Stock HiOS 13's true build fingerprint (`2025-08-05` system/boot, `2024-05-05` vendor).
- Note on `android.os.Build.*` constants: Static fields in `android.os.Build` (`Build.BRAND`, `Build.MODEL`, `Build.VERSION.SECURITY_PATCH`) are cached by `zygote64` at class initialization; changing `ro.product.*` at runtime without restarting Zygote does not update Java `Build.*` values seen by forked apps.

### 6.2 Android 11+ `<queries>` Package Visibility (`me.weishu.kernelsu`)
- Inspecting `dumpsys package com.logistics.rider.foodpanda` revealed that the app's `AndroidManifest.xml` explicitly declares root manager packages inside `<queries>`, resulting in:
  `queriesPackages=[..., me.weishu.kernelsu, ...]`
- **Critical Distinction (`pm hide` vs `pm uninstall`)**:
  - `pm hide me.weishu.kernelsu` hides the launcher icon for user `0` (`stopped=true, hidden=true`), **but leaves the package registered in `PackageManagerService`** and visible via `MATCH_UNINSTALLED_PACKAGES` (`pm list packages -u`) and package-query side channels.
  - Only full `pm uninstall <pkg>` removes the package entry from user `0`'s package state.

### 6.3 Android `monkey` Tombstone Abort Trap
- Whenever any earlier native crash leaves `/data/tombstones/tombstone_00` on disk, running `monkey -p <pkg> -c android.intent.category.LAUNCHER 1` (without `--ignore-native-crashes`) detects the tombstone and exits immediately (`** New tombstone found`) without starting the app.
- Always launch activities explicitly via `am start -n com.logistics.rider.foodpanda/com.roadrunner.login.presentation.router.RouterActivity` and clear stale files in `/data/tombstones/` during diagnostics.

---

## 7. Rider App (`com.logistics.rider.foodpanda` v4.2646.3) Security Architecture & `IAL403` Findings

Static and runtime analysis of the unmodified official split APK set (`base.apk` `classes.dex`..`classes5.dex` + `split_config.arm64_v8a.apk`, version `4.2646.3`, versionCode `1373`) established the exact security architecture:

### 7.1 Native & Kotlin Security Components
1. **`libtoolChecker.so` + `RiderSupportRootedCheckImpl` / `RiderSupportFeaturesImpl`**:
   - Standard RootBeer native check (`com.scottyab.rootbeer.util.QLog`) invoked inside the post-login Rider Support diagnostic screen (`performRootedDeviceCheck`, `verifyRootIntegrity`, `verifyHookIntegrity`).
   - **Not** what triggers `IAL403` on pre-login `/api/iam-login/v2/auth` or `/api/iam-login/v2/forgot_password`.
2. **`libsigner.so` (`com.adjust.sdk.sig.SignerInstance`)**:
   - Adjust SDK native request-signing library that stores an HMAC/signing key in `AndroidKeyStore` under alias `key2`.
3. **`libe761.so` + `com.roadrunner.incognia.implementation.IncogniaInitializerImpl` & `IncogniaManagerImpl`**:
   - Heavily obfuscated native library (`~1.6 MB`) implementing the **Incognia** device-intelligence & anti-fraud SDK.
   - Collects low-level device telemetry, installation identifiers, environment/mount/process signals, and **Android Hardware Key Attestation** (`AndroidKeyStore` ephemeral attestation keys prefixed `icg-...`), producing an encrypted installation/request token attached to outgoing HTTP API calls.
4. **`com.roadrunner.secure.certificate.GetCertificateHashPropertyImpl`**:
   - Computes the APK signing certificate hash so any modified/re-signed APK rebuild is immediately distinguishable from the official release signature.

### 7.2 Firebase Remote Config (`frc_..._firebase_activate.json`) Server Enforcement Proof
Inspection of `/data/data/com.logistics.rider.foodpanda/files/frc_1:122155123106:android:f0898254428837fe03f2fb_firebase_activate.json` revealed the exact remote feature flags controlling token attachment:
- `is_incognia_sdk_enabled`: `"all"`
- `is_incognia_token_in_api_http_requests_enabled`: `"all"`
- `apis_allowed_to_send_incognia_token`: Includes `api/iam-login/v2/auth`, `api/iam-login/v2/forgot_password`, and related IAM endpoints.

**Controlled Verification**: When `frc_..._firebase_activate.json` was locked read-only with Incognia token attachment disabled so the client sent the `forgot_password` request *without* the Incognia header, `bd.usehurrier.com/api/iam-login/v2/forgot_password` **still returned `IAL403: Unauthorized Rider App`**. This proved conclusively that `bd.usehurrier.com` enforces **mandatory server-side verification** of a valid, untampered anti-fraud/attestation token on IAM endpoints — omitting or invalidating the token causes an immediate `IAL403` rejection.

---

## 8. Keystore2 (`persistent.sqlite`), RKP (`OID 1.3.6.1.4.1.11129.2.1.30`) & Certificate Chain Cross-Checks

Forensic parsing of `/data/misc/keystore/persistent.sqlite` (`keyentry` and `blobentry` tables) alongside X.509 certificate extensions (`OID 1.3.6.1.4.1.11129.2.1.17` `KeyDescription` ASN.1 and `OID 1.3.6.1.4.1.11129.2.1.30` Google RKP `ProvisioningInfoMap` CBOR) uncovered the core cryptographic discrepancy between passing standard Play Integrity (`3/3`) and failing strict anti-fraud attestation cross-checks:

### 8.1 Genuine Hardware RKP Pool Certificates on `TECNO_BG6` (`persistent.sqlite`)
In `/data/misc/keystore/persistent.sqlite`, `keyentry` (`key_type = 2`, `alias = 'signed'`) contained **22 genuine Google-provisioned Remote Key Provisioning (RKP) certificates** issued by `CN=Droid CA3, O=Google LLC` (` CN=Droid CA2` -> `Key Attestation CA1`) specifically for this physical `TECNO_BG6` unit (including namespace `10201` for `com.logistics.rider.foodpanda`).

Decoding the signed X.509 RKP extension `OID 1.3.6.1.4.1.11129.2.1.30` (`182` bytes CBOR) inside the genuine `TECNO_BG6` RKP certificate showed:
- **Brand**: `"TECNO"`
- **Form Factor**: `"PHONE"`
- **Bootloader / RKP Status**: `"APPROVED"`
- **System Fingerprint**: `"TECNO/BG6-OP/TECNO-BG6:13/TP1A.220624.014/250722V2387:user/release-keys"`
- **`vbmeta_digest`**: `ccf0292211827a53570d0f61f4eb724258987f0a76c18a990e0f3c9421d352f1`

However, because TrustZone TEE reads the hardware bootloader lock fuse/state directly from secure world (independent of Linux kernel cmdline masking), any leaf attestation certificate (`Cert #0`) signed directly by the real TEE while the bootloader is unlocked contains `deviceLocked = false` and `verifiedBootState = Unverified (2)` in `RootOfTrust`.

### 8.2 Why Third-Party RKP Keyboxes Pass Play Integrity (`3/3`) Yet Fail Cross-Check Verifiers
Inspecting the third-party `keybox.xml` used to achieve `3/3` Play Integrity (`BASIC`, `DEVICE`, `STRONG`) revealed that its signing certificate (`Cert #0` in `keybox.xml`, which becomes **`Cert #1`** in the 4-certificate attestation chain returned to apps) is itself an **RKP-provisioned certificate** (`Issuer: CN=Droid CA3, O=Google LLC`) carrying signed extension **`OID 1.3.6.1.4.1.11129.2.1.30`** with CBOR payload:
- **Brand**: `"OnePlus"`
- **Form Factor**: `"TABLET"`
- **Bootloader Status**: `"APPROVED"`
- **`vbmeta_digest`**: `f9d4617376c75cccadadc1cac5d8ddf0c1c3cd42119e067cebe494e0be42bded`

Consequently, whenever an attestation chain is generated or leaf-patched for an app on `TECNO_BG6`:
1. **`Cert #0` (Leaf Certificate — `OID 1.3.6.1.4.1.11129.2.1.17` `KeyDescription`)** and **OS Telemetry (`Build.*` / `getprop`)** report:
   - `Brand = TECNO`, `Device = TECNO-BG6`, `FormFactor = PHONE`, `verifiedBootHash = ccf02922...`
2. **`Cert #1` (Intermediate RKP Signing Certificate — `OID 1.3.6.1.4.1.11129.2.1.30` `ProvisioningInfoMap`, signed by Google `Droid CA3`)** reports:
   - `Brand = OnePlus`, `FormFactor = TABLET`, `vbmeta_digest = f9d46173...`!

**Why Play Integrity Passed vs Why Rider (`Incognia`) Rejected**:
- Google's Play Integrity verdict checks whether the certificate chain validates up to Google's Hardware Attestation Root CA, is not revoked on Google's CRL, and reports `deviceLocked = true` + `Verified` boot state — so Play Integrity reports `MEETS_STRONG_INTEGRITY` (`3/3`).
- Dedicated anti-fraud engines that inspect the full attestation chain and cross-check `Cert #0` (`KeyDescription`), `Cert #1` (`OID 1.3.6.1.4.1.11129.2.1.30` RKP CBOR metadata), and runtime hardware/OS fingerprint (`TECNO BG6` / Unisoc T606 phone vs `OnePlus` tablet RKP parent certificate) immediately detect an impossible hybrid certificate chain!

---

## 9. Daemon In-Memory Key Cache Bug After `pm clear` & SELinux Shell Transition

Two important low-level Android Keystore2 interception bugs were also identified and documented during testing:

1. **Stale In-Memory `teeResponses` Cache Across `pm clear <package>`**:
   - When a package is intercepted by the keystore simulation daemon (`TEESimulator`), non-attestation keys generated by the app (such as Adjust SDK's HMAC key `key2` and AndroidX Security's `_androidx_security_master_key_`) are cached in memory (`Found generated response for key2:`) mapped to their `keystore2` `KeyId`.
   - When `pm clear <package>` is executed, Android's `keystore2` deletes all rows for that app's UID (`namespace = 10201`) from `/data/misc/keystore/persistent.sqlite`.
   - Because the daemon's in-memory `teeResponses` map is **not** invalidated on `pm clear` (nor cleared merely by editing `target.txt`), subsequent `generateKey("key2")` calls after `pm clear` return the **deleted** `KeyId`, causing `keystore2` operations (`AndroidKeyStoreHmacSpi` / `KeystoreOperation::finish`) to fail with `ResponseCode(7)` (`KEY_NOT_FOUND`) -> `android.security.KeyPermanentlyInvalidatedException` / `Error::Km(ErrorCode(-1000))`.
2. **SELinux `u:r:su:s0` -> `u:r:shell:s0` Transition on Mid-Session Daemon Respawn**:
   - Killing the daemon (`kill -9 $(pidof TEESimulator)`) after boot causes `supervisor` (`u:r:su:s0`) to respawn the daemon, which invokes `/system/bin/sh` to inspect `/system/bin/keystore2`.
   - On Stock HiOS 13 SELinux policy, executing `shell_exec` (`/system/bin/sh`) from `u:r:su:s0` transitions the child shell to `scontext=u:r:shell:s0`, which is denied `getattr` on `tcontext=u:object_r:keystore_exec:s0` (`avc: denied { getattr } for path="/system/bin/keystore2"`). A clean reboot initializes the binder hook cleanly without mid-session stale `KeyId` entries.

---

## 10. Dual-Mode Workflow: One-Click Clean Stock Lock & One-Click Rooted Snapshot Restore

Because commercial apps with server-side RKP + hardware anti-fraud verification (`com.logistics.rider.foodpanda` / Incognia) verify genuine hardware-locked TEE chains (`deviceLocked=true` signed by the device's own `TECNO` RKP certificate in `persistent.sqlite`), the clean, 100% reliable operational model on `TECNO_BG6` is the **two-script workflow** stored in [`hios13_v10_snapshot_suite/`](../hios13_v10_snapshot_suite/):

### Mode 1: Clean Factory Stock + Locked Bootloader (`ONE_CLICK_DAY_CLEAN_STOCK.bat`)
- **Script**: [`hios13_v10_snapshot_suite/clean_unroot_stock_and_lock.py`](../hios13_v10_snapshot_suite/clean_unroot_stock_and_lock.py) + [`hios13_v10_snapshot_suite/winusb_fastboot.py`](../hios13_v10_snapshot_suite/winusb_fastboot.py)
- **What It Does**:
  1. Cryptographically verifies `boot_a.bin` (`67,108,864` bytes, zero root strings) against `vbmeta_a.img`'s RSA public key chain descriptor.
  2. Removes `/data/adb/{ksud,ksu,modules,post-fs-data.d,service.d,boot-completed.d}` and uninstalls `me.weishu.kernelsu`.
  3. Reboots to Fastboot, flashes pure factory `boot_a.bin`, and sends `flashing lock_bootloader` over raw `WinUSB` (confirm with Volume Down on phone).
- **Result**: `verifiedbootstate=green`, 100% genuine `TECNO` hardware RKP attestation, confirmed working with Foodpanda Rider and all strict commercial/banking apps.

### Mode 2: Full Rooted `v10` KernelSU Snapshot Restore (`ONE_CLICK_NIGHT_RESTORE.bat`)
- **Script**: [`hios13_v10_snapshot_suite/restore_night_snapshot_v10.py`](../hios13_v10_snapshot_suite/restore_night_snapshot_v10.py)
- **What It Does**:
  1. Auto-detects `adb.exe` & `fastboot.exe` across both `%LOCALAPPDATA%\Android\Sdk\platform-tools` and `%USERPROFILE%\Android\Sdk\platform-tools`.
  2. Unlocks bootloader automatically via Unisoc AutoDloader (`spd_dump.exe` -> `wof miscdata 8192 m.bin` -> `reboot-fastboot`) if currently locked.
  3. Flashes `bg6_boot_a_v10_ksu_avbf.img` (`v10` production KernelSU `11872` kernel with exact Stock HiOS 13 banner & `AVBf` trailer).
  4. Reinstalls all saved single & split APKs (`adb install-multiple -r -d`, skipping transient test instrumentation packages).
  5. Recreates `/data/adb/ksu/modules.img` (`ext4 -O ^has_journal`, `u:object_r:adb_data_file:s0`), restores `/data/adb`, modules, `/sdcard`, and `CE`/`DE` app data with `chown` + `restorecon`.
  6. Remaps every package's saved UID inside KernelSU `.allowlist` (`0x7F4B5355` v3 `776`-byte records) to match the newly assigned UIDs in `/data/system/packages.list` and reboots cleanly.

---

## 11. Repository File Index Added in This Session

| Repository Path | Description |
| :--- | :--- |
| [`docs/SESSION_2026_11_13_14_COMPLETE_ANALYSIS_AND_FINDINGS.md`](SESSION_2026_11_13_14_COMPLETE_ANALYSIS_AND_FINDINGS.md) | This complete master report covering all kernel, mount, Keystore2/RKP, snapshot, and Rider (`IAL403`) findings |
| [`docs/SESSION_2026_11_13_HIOS13_V10_NOTES.md`](SESSION_2026_11_13_HIOS13_V10_NOTES.md) | Concise quick-reference summary for Stock HiOS 13 `v10` kernel & snapshot restore |
| [`patches/0005-v9-ksu-prod-path-umount-throne-tracker.patch`](../patches/0005-v9-ksu-prod-path-umount-throne-tracker.patch) | Kernel `v9` patch (`e1a8ab1a5`): KernelSU `11872`, `path_umount` backport, BFS `throne_tracker` fix |
| [`patches/0006-v10-unconditional-zygote-mount-isolation-ksu-cred.patch`](../patches/0006-v10-unconditional-zygote-mount-isolation-ksu-cred.patch) | Kernel `v10` patch (`265ca4ebb`): `ksu_cred` + unconditional Zygote/WebView mount detachment |
| [`configs/bg6_golden_v9_v10_prod_defconfig`](../configs/bg6_golden_v9_v10_prod_defconfig) | Verified production `.config` for `v9`/`v10` (`CONFIG_KSU=y`, `CONFIG_KSU_DEBUG=n`, full KMI/CFI/SCS/LTO) |
| [`scripts/build_and_repack_v10_ksu_prod.sh`](../scripts/build_and_repack_v10_ksu_prod.sh) | Reproducible `v10` kernel builder & `AVBf`-preserving `64 MiB` `boot_a` repacker |
| [`hios13_v10_snapshot_suite/winusb_fastboot.py`](../hios13_v10_snapshot_suite/winusb_fastboot.py) | Pure-Python `ctypes` `WinUSB` raw Fastboot USB bulk-pipe transport |
| [`hios13_v10_snapshot_suite/clean_unroot_stock_and_lock.py`](../hios13_v10_snapshot_suite/clean_unroot_stock_and_lock.py) | Automated factory `boot_a.bin` + `vbmeta_a.img` verifier & green bootloader relock tool |
| [`hios13_v10_snapshot_suite/restore_night_snapshot_v10.py`](../hios13_v10_snapshot_suite/restore_night_snapshot_v10.py) | Full BROM unlock + `v10` kernel flash + split APK + `CE`/`DE` data + `.allowlist` v3 UID-remapping restore engine |
| [`hios13_v10_snapshot_suite/ONE_CLICK_DAY_CLEAN_STOCK.bat`](../hios13_v10_snapshot_suite/ONE_CLICK_DAY_CLEAN_STOCK.bat) | One-click Windows launcher for Clean Locked Stock mode |
| [`hios13_v10_snapshot_suite/ONE_CLICK_NIGHT_RESTORE.bat`](../hios13_v10_snapshot_suite/ONE_CLICK_NIGHT_RESTORE.bat) | One-click Windows launcher for Full Rooted `v10` Snapshot Restore mode |
| [`bg6_device_reference/bg6_hios13_locked_stock_getprop.txt`](../bg6_device_reference/bg6_hios13_locked_stock_getprop.txt) | Ground-truth `getprop` dump from Clean Locked Stock HiOS 13 (`verifiedbootstate=green`) |
| [`bg6_device_reference/bg6_hios13_locked_stock_mounts.txt`](../bg6_device_reference/bg6_hios13_locked_stock_mounts.txt) | Ground-truth `/proc/mounts` dump from Clean Locked Stock HiOS 13 |
| [`bg6_device_reference/bg6_hios13_locked_stock_filesystems.txt`](../bg6_device_reference/bg6_hios13_locked_stock_filesystems.txt) | Ground-truth `/proc/filesystems` dump from Clean Locked Stock HiOS 13 |
