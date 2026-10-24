# TECNO BG6 — Double-Tap to Wake (DT2W) & Double-Tap to Sleep (DT2S) Hardware & Driver Research (`ICNL9916` BOE In-Cell TDDi)

## 1. Overview & Problem Statement

On the **TECNO BG6 (Unisoc UMS9230 / T606)** with the **BOE `ICNL9916` In-Cell Touch + Display Driver Integration (TDDi)** panel (`lcd_icnl9916_boe_mipi_hdp`), enabling the HiOS `Micro Intelligence -> Tapping Wake` UI toggle (`os_action_tapping_wake=1`) allowed double-tap on the home screen to turn the display **OFF**, but double-tapping the black screen **never woke the device up**.

Furthermore, standard root/kernel DT2W methods (writing to `/proc/gesture_function` or `/sys/chipone-tddi/misc/gesture_en`) either had no effect on screen-off or caused the touchscreen to stop responding after the first suspend/resume cycle.

Through deep inspection of the vendor kernel modules (`chipone_icnl99xx.ko`, `adaptive-ts.ko`, `tran_gesture.ko`, and `sprd-drm.ko`) and the device tree overlay (`dtbo_a`), we identified **four hardware/firmware/driver root causes** and engineered a complete, 100% reliable solution.

---

## 2. The Four Root Causes (Why Standard DT2W Failed on `ICNL9916`)

### Root Cause 1: Missing `tran_touch` Properties in Stock `dtbo_a`
- In `adaptive-ts.ko` (`tran_parse_dt()`), the touchscreen wrapper reads `/soc/tran_touch` from the device tree looking for `gesture_function` and `psensor_function`.
- In the stock `dtbo_a` partition (Entry 5, `ums9230-1h10-overlay.dts`), `/fragment/__overlay__/tran_touch` only contained `compatible = "transsion,tran_touch";` with neither `gesture_function` nor `psensor_function`.
- As a result, `adaptive-ts.ko` unconditionally placed the panel into `TRAN_NORMAL_SUSPEND_MODE` (`Deep Sleep`) on screen-off, powering down the touch controller and sending MIPI DSI command `6D 25 00` + `28 00` + `10 00` (Deep Standby) in `sprd_panel_disable()`.

### Root Cause 2: BOE `ICNL9916` Panel Firmware (`01f1`) Does Not Support Standalone Gesture Power Mode
- The touch controller is a **Chipone `ICNL9916` flashless In-Cell TDDi** running firmware version `01f1` (`[tran_touch]sprd_tpinfo 52:firmwork_version:0xf1, chip_name:icnl9916 vendor_name:BOE`).
- When `chipone_icnl99xx.ko` attempts to put `ICNL9916` into hardware gesture monitor mode (`cts_suspend_device()` -> `<I>CTS-Core Set suspend mode:gesture` -> `cts_tcs_set_pwr_mode()`), the `01f1` firmware rejects the SPI TCS command with a CRC/NACK error:
  ```
  <I>CTS-Core Set suspend mode:gesture
  <E>CTS-TCS crc error: recv 0117 != 8603 calc
  <E>CTS-Core Suspend device failed -5
  ```
- When `cts_suspend_device()` fails with `-5`, `chipone_icnl99xx.ko` falls back to `cts_stop_device()`, which disables touch scanning completely.

### Root Cause 3: The Flashless `SRAM-BOOT` Wipe Trap on Resume (`gesture_wakeup_enabled`)
- Because `ICNL9916` is a **flashless** TDDi controller (`Curr dev boot mode: 3(SRAM-BOOT)`), its `01f1` touch firmware resides in volatile SRAM inside the display driver IC, loaded by the display panel DDI controller.
- If `gesture_wakeup_enabled` is turned on (for example, by writing `"al0"` or `"cc0"` to `/proc/gesture_function`), then on screen resume (`cts_resume_device()`), the driver pulses the hardware reset pin (`<I>CTS-Plat Reset device`, which clears volatile SRAM) and **skips normal DDI firmware initialization**, causing all subsequent SPI reads to return zeros:
  ```
  <E>CTS-TCS 1cs crc error: recv 0000 != dcc2 calc
  <E>CTS-TCS tcs_spi_read_1_cs failed
  ```
- **Lesson**: Never write `"al0"`/`"cc0"` to `/proc/gesture_function` and never enable `gesture_function` in DTBO on `01f1` flashless panels.

### Root Cause 4: In-Cell TDDi Touch Scanning Requires the MIPI DSI Sync Clock
- Even when `TRAN_PS_SUSPEND_MODE` (`psensor_enable = 1`) is active so that:
  1. `chipone_icnl99xx.ko` stays in Active Mode (`<I>CTS- ps suspend, do nothing` / `<I>CTS- ps resume, do nothing`), and
  2. `sprd_panel_disable()` / `sprd_panel_unprepare()` in `sprd-drm.ko` skips cutting `AVDD`/`AVEE` bias and skips panel hardware reset (instead sending only `sprd,oled-backlight-close`),
- Immediately after `sprd_panel_disable()`, `sprd_dsi_encoder_disable()` in `sprd-drm.ko` still executes:
  - `sprd_dpu_stop()`
  - `sprd_dphy_hs_clk_en(dphy, false)`
  - `sprd_dphy_data_ulps_enter(dphy)`
  - `sprd_dphy_clk_ulps_enter(dphy)`
- Because `ICNL9916` is an In-Cell TDDi chip whose touch analog front-end (AFE) is synchronized to the **MIPI DSI VSYNC/HSYNC clock**, putting the MIPI D-PHY clock lane into Ultra-Low Power State (ULPS) halts touch matrix scanning until the MIPI DSI clock resumes.

---

## 3. The 4-Part Engineering Solution

To achieve instantaneous, 100% reliable Double-Tap to Wake (DT2W) and Lockscreen Double-Tap to Sleep (DT2S) without modifying `.ko` binaries (preserving Samsung/Unisoc CFI + Shadow Call Stack + `MODVERSIONS` ABI), we implemented a 4-part architecture:

```
┌────────────────────────────────────────────────────────────────────────────┐
│ 1. Patched dtbo_a (Entry 5: /fragment/__overlay__/tran_touch)              │
│    Adds `psensor_function = <1>` (exact 89,555-byte FDT entry preserved)   │
│    Creates `/sys/devices/virtual/sprd_sensorhub_tp/device/psensor_enable`  │
└───────────────────────────────────────┬────────────────────────────────────┘
                                        │
                                        ▼
┌────────────────────────────────────────────────────────────────────────────┐
│ 2. TRAN_PS_SUSPEND_MODE (`psensor_enable = 1` in service.sh)               │
│    • `sprd-drm.ko` keeps panel power rails on & skips reset on suspend     │
│    • `chipone_icnl99xx.ko` runs `CTS- ps suspend/resume, do nothing`       │
│    • `ICNL9916` volatile SRAM firmware (`01f1`) stays 100% intact!         │
└───────────────────────────────────────┬────────────────────────────────────┘
                                        │
                                        ▼
┌────────────────────────────────────────────────────────────────────────────┐
│ 3. Pitch-Black Standby + Lockscreen DT2S (`dt2w_daemon v4`)                │
│    • On sleep (`brightness == 0` for 300ms OR Lockscreen double-tap):      │
│      1) Locks `/sys/class/backlight/sprd_backlight/brightness` at `0`      │
│         (`chmod 0444`) -> LCD backlight is 100% OFF (`actual_bl = 0`)      │
│      2) Grabs `chipone-tddi` & `gpio-keys` (`ioctl(EVIOCGRAB, 1)`) so      │
│         single accidental touches are blocked from Android                 │
│      3) Emits `KEY_WAKEUP` (`183`) to keep `dpms=On` (MIPI DSI clock       │
│         running while screen remains 100% pitch black)                     │
│      4) Ignores residual FIFO touch packets for 450ms post-standby         │
│    • On Double-Tap (`gap 30..800ms`, `dx,dy <= 260`), Power Key, or FP:    │
│      1) Unlocks `brightness` (`chmod 0664`) & restores `saved_bl` in <5ms  │
│      2) Waits for finger/key release, drains input, releases `EVIOCGRAB`   │
└────────────────────────────────────────────────────────────────────────────┘
```

### Part 1: Patching `dtbo_a` Entry 5 (`build_patched_dtbo.py`)
- Extracted Entry 5 from `/dev/block/by-name/dtbo_a` (`offset 461488`, `size 89555` bytes).
- Added the 20-byte FDT property `psensor_function = <0x00000001>` to `/fragment/__overlay__/tran_touch`.
- Balanced the exact 20-byte delta (`16` bytes in `dt_struct` + `4` bytes in `dt_strings`) by trimming `20` bytes from unused panel driver strings in `/fragment/__overlay__/dsi@31100000/panel@0/panel-name`, keeping Entry 5 at **exactly `89,555` bytes** and total `dtbo_a` size at **8,388,608 bytes**.
- Backed up stock `dtbo_a` (`sha256: b87a9d756b3ff95aa0e529816ce63d4c109bd8578357868314dc6e88c69b5e38`) and flashed `dtbo_patched.img` (`sha256: bed057c8ef42d6c1d590d9698e724e0dc51585f12acbf5ead79e2cb69698fe21`).

### Part 2: Android Keylayout Wakeup Mapping (`Generic.kl` & `chipone-tddi.kl`)
- Added `WAKEUP WAKE` mappings for `key 183` (`KEY_F13` / `KEY_WAKEUP` in kernel `<linux/input-event-codes.h>`) and `key 190` (`KEY_F20`) in `/system/usr/keylayout/Generic.kl` and `/system/usr/keylayout/chipone-tddi.kl` inside the module.

### Part 3: `dt2w_daemon v4` (Static ARM64 C Daemon)
Key engineering features in `hios_pro_dt2w/dt2w_daemon.c`:
1. **Dynamic Input Device Auto-Discovery (`EVIOCGNAME`)**:
   - Because `/dev/input/eventX` numbering changes across boots (e.g. `gf-keys` shifts between `event3` and `event5`, and `chipone-tddi` shifts between `event2` and `event4`), the daemon scans `/dev/input/event0..11` using `ioctl(fd, EVIOCGNAME)` to match `"chipone-tddi"`, `"gpio-keys"`, and `"gf-keys"`.
2. **MT Protocol B Frame-Synchronized Coordinate Capture**:
   - `chipone-tddi` emits `ABS_MT_TRACKING_ID` *before* `ABS_MT_POSITION_X` and `ABS_MT_POSITION_Y` within the same frame. The daemon evaluates tap coordinates at `EV_SYN` (`SYN_REPORT`), ensuring accurate `(cur_x, cur_y)` distances on every tap.
3. **450ms Post-Standby Debounce Guard**:
   - When the user double-taps the home screen to sleep, `ICNL9916` retains two buffered touch packets that replay ~80–200ms after `notify tp resume`. Ignoring touch events for the first `450ms` after entering `BLACK_STANDBY` prevents false self-wakeups.
4. **Lockscreen Double-Tap to Sleep (`LOCKSCREEN_DT2S`)**:
   - When the screen is ON (`is_black_standby == 0`) and a stationary double-tap occurs (`gap 35..500ms`, `dx,dy <= 150`, no swipe > 50px), the daemon queries `dumpsys window policy` (~10ms) to check `showing=true` and `showingAndNotOccluded=true`.
   - If the phone is on the Lockscreen (and not swiping up to enter a PIN/Pattern), it waits for finger release and immediately transitions into `ENTER_BLACK_STANDBY` (`brightness = 0` locked).
5. **Physical Power Key & Fingerprint Integration**:
   - While in `BLACK_STANDBY`, `gpio-keys` is also grabbed so pressing the physical Power button wakes the screen (`EXIT_BLACK_STANDBY reason=POWER_KEY`) instead of toggling Android's underlying `Awake` state to `Asleep`, while Volume Up/Down keys are transparently forwarded through `uinput`. Touching the fingerprint sensor (`gf-keys`) also immediately restores backlight (`EXIT_BLACK_STANDBY reason=FINGERPRINT`).

---

## 4. Real-Time Log Verification (`/data/local/tmp/dt2w.log`)

```
[464452] dt2w_daemon v4 starting
[464506] Matched input chipone-tddi -> /dev/input/event2
[464506] Matched input gpio-keys -> /dev/input/event0
[464604] Matched input gf-keys -> /dev/input/event3
[465847] LOCKSCREEN_DT2S x=506 y=613 gap=128
[465914] ENTER_BLACK_STANDBY reason=LOCKSCREEN_DOUBLE_TAP
[467522] STANDBY_TAP x=500 y=593 gap=467522 dx=15 dy=9
[467711] STANDBY_TAP x=497 y=600 gap=189 dx=3 dy=7
[467899] EXIT_BLACK_STANDBY reason=DOUBLE_TAP restored_bl=1920
[468705] LOCKSCREEN_DT2S x=483 y=597 gap=166
[468753] ENTER_BLACK_STANDBY reason=LOCKSCREEN_DOUBLE_TAP
[469274] STANDBY_TAP x=494 y=598 gap=469274 dx=5 dy=4
[469418] STANDBY_TAP x=498 y=599 gap=144 dx=4 dy=1
[469612] EXIT_BLACK_STANDBY reason=DOUBLE_TAP restored_bl=1920
```
