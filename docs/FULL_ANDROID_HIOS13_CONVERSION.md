# TECNO BG6 — Full Android 13 & Full HiOS 13 Pro Conversion Research & Engineering Guide

## 1. Executive Summary

The **TECNO BG6 (Tecno Spark Go 2024, Unisoc UMS9230 / T606)** ships from the factory with **Android 13 Go Edition (`HiOS 13 Lite`)**, even on variants with 3 GB / 4 GB physical RAM and an octa-core T606 SoC.

Despite using the standard 64-bit Android 13 framework and kernel (`5.4.210-android12-9`), Transsion artificially restricts the ROM into "Go / Lite Mode" across **five distinct software layers**:
1. **Build & Runtime System Properties** (`ro.config.low_ram=true`, `ro.os_go.support=1`, `ro.griffin.app_lite=1`, `ro.os_settings_lite_custom=1`, etc.)
2. **System Permission Feature XMLs** (`android.software.ram.low` declared in `/vendor/etc/permissions` and `/product/etc/permissions`, while `freeform_window_management`, `picture_in_picture`, and `app_widgets` are stripped)
3. **Framework Resource Booleans** (`config_lowRamTaskSnapshotsAndRecents=true`, `config_supportsSplitScreenMultiWindow=false`, `config_supportsMultiWindow=false`)
4. **Disabled Activity Components inside `OSSettingsExt`** (Split-Screen settings, Lockscreen Notification Center, Peek Proof, Edge Lighting / Flash, Activity Embedding, Compatible Mode)
5. **Removed / Stripped System Apps in `/system_ext` and `/product`** (`SmartPanel`, `MicroIntelligence`, `TranMultiWindow`, `TranThunderback`, `AppLock`, `DualApp`, `VideoCallEnhancer`, `ChildModeThub`, `ZaHooc`)

We engineered a complete, systemless KernelSU / Magisk module (**`bg6_hios_pro`**) that reverses all five restrictions and ports the full HiOS 13 Pro software suite onto the TECNO BG6.

---

## 2. Layer-by-Layer Reverse Engineering Findings

### Layer 1: System Properties (`system.prop` & Post-Boot `resetprop`)

Decompiling `Settings.apk`, `com.transsion.ossettingsext`, `SystemUI.apk`, and `HiLauncher` revealed the exact system properties inspected at runtime to hide menus such as **Special Function**, **Multi-Window / Split Screen**, **Display & Brightness extras**, and **Privacy / App Lock**:

| Property | Stock Value | Full HiOS 13 Value | Effect |
|---|---|---|---|
| `ro.config.low_ram` | `true` | `false` | Disables Android Go `ActivityManager.isLowRamDevice()` restrictions; enables full Recents task snapshots, Notification Listener access, PiP, and multi-window |
| `ro.os_go.support` | `1` | `0` | Disables Transsion global Go Edition UI gating in `Settings` and `SystemUI` |
| `ro.os_1g_go.support` .. `ro.os_4g_go.support` | `1` | `0` | Disables RAM-tier Go Edition overrides re-asserted by `init` scripts |
| `ro.griffin.app_lite` | `1` | `0` | Switches Transsion core apps from Lite mode to Full mode |
| `ro.os_settings_lite_custom` | `1` | `0` | Unlocks full **Settings** top-level categories (`Special Function`, full `Display & Brightness`, full `Privacy`) |
| `persist.sys.tran_split_screen.force_disable` | `1` | `0` | Re-enables split-screen in `SystemUI` / `WindowManager` |
| `persist.sys.traneffect.enable` | `0` | `1` | Enables full HiOS UI transitions and blur/animation effects |
| `ro.tran_smartpanel_support` | `0` | `1` | Enables **Smart Panel** edge sidebar in `Special Function` |
| `ro.os_micro_intelligence_support` | `0` | `1` | Enables **Micro Intelligence** gesture settings in `Special Function` |
| `ro.os_thunderback_support` | `0` | `1` | Enables **Lightning Multi-Window (Thunderback)** in `Special Function` |
| `ro.os_dualapp_support` | `0` | `1` | Enables **XClone (Dual App)** in `Special Function` |
| `ro.os_video_call_enhancer_support` | `0` | `1` | Enables **Social Turbo** in `Special Function` |
| `ro.os_childmode_support` | `0` | `1` | Enables **Kids Mode** in `Special Function` |
| `ro.os_applock_support` | `0` | `1` | Enables **App Lock** in `Security / Privacy` |
| `ro.os_peek_proof_support` | `0` | `1` | Enables **Peek Proof (`ZaHooc`)** in Quick Settings & Special Function |
| `ro.os_action_tapping_wake` | `0` | `1` | Exposes **Tapping Wake (Double-Tap to Wake)** toggle in `Micro Intelligence` |

> **Critical Discovery**: Vendor post-boot init scripts re-assert several `ro.os_*_go.support` properties after `post-fs-data`. Therefore, `service.sh` waits for `sys.boot_completed=1` and re-applies `resetprop -n` for all Go properties so that `Settings` and `SystemUI` always see `false`/`0`.

---

### Layer 2: Hardware & Software Feature XML Overrides (`post-fs-data.sh`)

Even when `ro.config.low_ram=false` is set, Android's `PackageManagerService` checks `/vendor/etc/permissions/` and `/product/etc/permissions/` for `<feature name="android.software.ram.low"/>`. If present, `PackageManager.hasSystemFeature(FEATURE_RAM_LOW)` still returns `true`, which blocks:
- Split-screen & freeform multi-window in `ActivityTaskManagerService`
- Picture-in-Picture (PiP)
- Notification Listener services & Device Admin overlays

In `post-fs-data.sh`, we scan all XML files in `/vendor/etc/permissions`, `/system/etc/permissions`, `/product/etc/permissions`, and `/system_ext/etc/permissions` for `android.software.ram.low`, generate sanitized copies in `/dev/bg6_perm_ovr/` with `ram.low` replaced by `ram.normal` plus full Android 13 feature flags (`freeform_window_management`, `picture_in_picture`, `activities_on_secondary_displays`, `app_widgets`, `managed_users`, `backup`), and bind-mount them before `system_server` starts.

---

### Layer 3: Runtime Resource Overlay (`BG6HiOSPro.apk`)

In stock `framework-res.apk` (and vendor overlays), low-RAM task snapshot and multi-window booleans are hardcoded. We compiled a custom RRO overlay (`/product/overlay/BG6HiOSPro.apk`, targeting `android` with priority `999`) that sets:
- `config_lowRamTaskSnapshotsAndRecents = false`
- `config_supportsMultiWindow = true`
- `config_supportsSplitScreenMultiWindow = true`
- `config_supportsFreeformWindowManagement = true`

---

### Layer 4: Ported Full HiOS 13 System Applications

Because the stock BG6 ROM omitted the Full HiOS 13 feature APKs, tapping items inside `Special Function` would fail with `ActivityNotFoundException` unless the corresponding system packages were installed. We integrated the complete 64-bit (`arm64-v8a`) HiOS 13 system packages into the module:

| Path in Module | Package Name | Feature |
|---|---|---|
| `system_ext/app/SmartPanel/SmartPanel.apk` (+ 9 native `.so` libs) | `com.transsion.smartpanel` | Smart Panel Sidebar + Game Mode Video Assistant |
| `system_ext/app/MicroIntelligence/MicroIntelligence.apk` | `com.transsion.microintelligence` | Micro Intelligence (Tapping Wake, Flip Mute, Raise to Ear, etc.) |
| `system_ext/app/TranMultiWindow/TranMultiWindow.apk` | `com.transsion.multiwindow` | Lightning Multi-Window (Freeform floating windows) |
| `system_ext/app/TranThunderback/TranThunderback.apk` | `com.transsion.thunderback` | Thunderback dynamic floating return bubble |
| `system_ext/priv-app/AppLock/AppLock.apk` | `com.transsion.applock` | Native HiOS App Lock (with `com.transsion.applock.xml` privapp permissions) |
| `product/app/DualApp/DualApp.apk` | `com.transsion.dualapp` | XClone Dual App support |
| `system_ext/app/VideoCallEnhancer/VideoCallEnhancer.apk` | `com.transsion.videocallenhancer` | Social Turbo (WhatsApp video beauty, voice changer, peek mode) |
| `system_ext/app/ChildModeThub/ChildModeThub.apk` | `com.transsion.childmode` | Kids Mode |
| `system_ext/priv-app/ZaHooc/ZaHooc.apk` | `com.transsion.zahooc` | Peek Proof privacy screen filter |

---

### Layer 5: Enabling Hidden Components & Settings Keys (`service.sh`)

Several activities inside `com.transsion.ossettingsext` are marked `android:enabled="false"` in the stock manifest on Go builds. On boot (`service.sh`), we explicitly enable them via `pm enable` and configure the corresponding `settings` keys:

```sh
# Global / System settings for Freeform, Split-Screen, and Lockscreen Notification features
settings put global enable_freeform_support 1
settings put global force_resizable_activities 1
settings put global tranthunderback_enable 1
settings put global split_settings_slide_down_split_screen 1
settings put global msg_split_screen 1
settings put system test_split_topbottom 1
settings put system three_finger_split_screen 1
settings put system key_edge_flash 1
settings put system tran_DualApp_support 1

# Enable hidden OSSettingsExt activities
pm enable com.transsion.ossettingsext/com.transsion.splitscreensetting.SplitSettingsMainActivity
pm enable com.transsion.ossettingsext/com.transsion.splitscreensetting.SplitSettingsDetailActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.noticenter.activity.NotificationCenterActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.noticenter.activity.NotificationDisplaySettingsActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.lock.pop.LockPopActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.lock.notify.LockScreenNotifyActivity
pm enable com.transsion.ossettingsext/com.transsion.ossettingsext.flash.main.MainActivity
pm enable com.transsion.ossettingsext/com.transsion.activityembedding.SettingsActivity
pm enable com.transsion.ossettingsext/com.transsion.compatiblemode.SettingsActivity
pm enable com.transsion.ossettingsext/com.transsion.screenrelay.SettingsActivity
pm enable com.transsion.ossettingsext/com.transsion.displaycutoutmode.SettingsActivity
```

---

## 3. Verification Summary

With `bg6_hios_pro` installed on the TECNO BG6:
- `getprop ro.config.low_ram` returns `false`
- `cmd package has-feature android.software.ram.low` returns `false`
- **Settings -> Special Function** appears with all sub-menus working (`MemFusion`, `Smart Panel`, `Social Turbo`, `Game Mode`, `XClone`, `Micro Intelligence`, `Video Assistant`, `Kids Mode`, `Peek Proof`, `Lightning Multi-Window`)
- **Recents** shows the full HiOS app switcher with **Split Screen** and **Floating Window (Freeform)** buttons on every app card
- **Display & Brightness** and **Privacy / Security** expose all full HiOS 13 controls
