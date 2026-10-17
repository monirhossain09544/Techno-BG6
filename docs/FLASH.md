# Flashing & recovery

## Flash the kernel

```bash
adb reboot bootloader
fastboot devices
fastboot flash boot_a bg6_boot_a_v5_ksu_kprobes.img
fastboot reboot
```

`fastboot boot <img>` (temporary RAM boot) is **ignored** by the Unisoc T606
bootloader - it reports OKAY but boots the old kernel from flash. Always use
`fastboot flash boot_a`.

## Verify after boot

```bash
adb shell uname -a                     # expect Monir@tecno-bg6-v5-ksu
adb shell getprop sys.boot_completed   # 1
adb shell dumpsys user | grep "State:" # RUNNING_UNLOCKED
```

KernelSU: open the Manager app - it should show **Working**.

> If `su` is missing and apps do not launch, check
> `dumpsys user | grep State`. `RUNNING_LOCKED` means the phone is at the lock
> screen - enter your PIN. This is not a kernel problem.

## Revert to a previous kernel (5 seconds)

```bash
fastboot flash boot_a <previous golden image>
```

| File | What |
|---|---|
| `bg6_boot_a_v5_ksu_kprobes.img` | current (KernelSU working) |
| `bg6_boot_a_v3_perf.img` | Magisk + performance |
| `bg6_boot_a_v4_ksu.img` | KernelSU, KPROBES off |
| `boot_a_stock.img` | untouched factory kernel |

---

# HARD BRICK RECOVERY (BROM mode)

Use when there is **no fastboot, no fastbootd, no USB device at all** - e.g.
the CLANG_TRIPLE/SCS bug.

## Enter BROM mode

1. Unplug USB.
2. Hold **Power** for **20 s** - screen stays black (keep holding if the logo returns).
3. Hold **Volume Up + Volume Down** together - do not release.
4. While holding, plug the USB cable.
5. Keep holding ~10 s.

**Success:** screen stays completely black and Windows shows a new device named
**SPRD U2S Diag (COMx)**.

**Failure:** the Tecno logo appears -> normal boot -> unplug and retry.

## Flash from BROM

The full 72-partition backup (6.06 GB) plus tested tooling lives in
`D:\Tecno_BG6_Full_ROM_Backup\`:

- `spd_dump.exe`
- fdl1 / fdl2 loaders
- `custom_exec_no_verify_65015f08.bin` (96 bytes - **required**, restore fails without it)
- verified `boot_a.img`, `splloader.bin`, all partition `.img` files
- `Restore_Full_ROM_BROM.bat`
- `Restore_boot_a_ONLY.bat` (single-partition restore, safest)

Run `Restore_boot_a_ONLY.bat` to restore just the boot partition:

```
Write Part Done: boot_a, written: 0x4000000
```

Then reboot - the phone returns to the stock kernel with Magisk intact.

## What is safe to flash

| Partition | Safe? |
|---|---|
| `boot_a` | yes, always |
| `vendor_boot_a` / `dtbo_a` | only with a matching kernel |
| `vbmeta_a` | **DO NOT TOUCH** - the Unisoc bootloader can freeze on a generic vbmeta |

Because the bootloader is unlocked (`verifiedbootstate=orange`,
`vbmeta.device_state=unlocked`) it skips boot signature verification, so a
modified `boot_a` boots fine while `vbmeta_a` stays untouched.
