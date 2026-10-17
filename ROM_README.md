# TECNO BG6 — Full ROM Backup (BROM Restore Set)

Complete 72-partition flashable backup of the **TECNO BG6** (Unisoc UMS9230 / T606,
Android 13), captured **before** any kernel modification. Verified bootable.

---

## Contents

| Asset | Size | What |
|---|---|---|
| `super.img.part01` … `part04` | 4×1.49 GB | The 4.79 GB `super.img` split into parts |
| `rom_rest.tar.gz` | 187 MB | All other 97 files (98 total − super.img) |
| `rom_rest.tar.gz.sha256` | — | Checksum |

### What's inside `rom_rest.tar.gz`

```
Tecno_BG6_Full_ROM_Backup/
├── boot_a.img  boot_b.img  boot_a.bin  boot_b.bin   (64 MB each)
├── vendor_boot_a.img  vendor_boot_b.img             (100 MB each)
├── dtbo_a.img  dtbo_b.img  dtb_a.img  dtb_b.img
├── init_boot_a.img  init_boot_b.img
├── vbmeta*.img  avbmeta_rs_*.img                    (all vbmeta variants)
├── metadata.img  prodnv.img  tranfs.img  calinv.img
├── l_modem_a/b.img  l_gdsp_a/b.img  l_ldsp_a/b.img  l_agdsp_a/b.img
├── l_fixnv1/2_a/b.img  l_deltanv_a/b.img
├── common_rs1/2_a/b.img  hypervsior_a/b.img
├── logo.img  fbootlogo.img  uboot_log.img
├── splloader.bin
├── fdl1-dl.bin  fdl1-sign.bin  fdl2-dl.bin  fdl2-sign.bin  fdl2-cboot.bin
├── custom_exec_no_verify_65015f08.bin     (96 B — REQUIRED for restore)
├── spd_dump.exe  Channel9.dll  Channel.ini
├── gen_spl-unlock.exe  chsize.exe
├── Restore_Full_ROM_BROM.bat
├── Restore_boot_a_ONLY.bat
├── checksums.txt
└── Log/
```

---

## ⚠️ Restore only if the phone is bricked

This procedure is for the **BROM / SPRD U2S Diag** recovery path, used when
there is no fastboot, no fastbootd, and no USB device visible at all.

### 1. Reassemble the files

```bash
# Linux / macOS / Git-Bash
cat super.img.part01 super.img.part02 super.img.part03 super.img.part04 > super.img
sha256sum super.img          # verify against checksums.txt

tar xzf rom_rest.tar.gz
cd Tecno_BG6_Full_ROM_Backup
mv ../super.img .
```

Windows (PowerShell):

```powershell
Get-Content super.img.part01,super.img.part02,super.img.part03,super.img.part04 -Encoding Byte -ReadCount 0 |
  Set-Content super.img -Encoding Byte
tar xzf rom_rest.tar.gz
Move-Item super.img Tecno_BG6_Full_ROM_Backup\
```

### 2. Enter BROM mode

1. **Unplug USB.** Phone must be off (hold **Power 20 s** if unsure).
2. Hold **Volume Up + Volume Down** together — do not release.
3. While holding both, **plug the USB cable**.
4. Keep holding ~10 seconds.

**Success:** screen stays completely black, and Windows Device Manager shows
**`SPRD U2S Diag (COMx)`**.

**Failure:** the Tecno logo appears → normal boot → unplug, wait, retry.

### 3. Flash

**Safest — restore only the boot partition:**

```
Restore_boot_a_ONLY.bat
```

Expected output:
```
Write Part Done: boot_a, written: 0x4000000
```

**Full restore (all 72 partitions):**

```
Restore_Full_ROM_BROM.bat
```

> `custom_exec_no_verify_65015f08.bin` **must** be present in the same folder.
> Without it the loader refuses and the restore fails immediately.

### 4. Reboot

Unplug, hold **Power 15 s**, then boot normally.

---

## Partition notes

| Partition | Safe to flash? |
|---|---|
| `boot_a` | ✅ always |
| `vendor_boot_a` `dtbo_a` | ⚠️ only with a matching kernel |
| `vbmeta_a` | ❌ **DO NOT TOUCH** — the Unisoc bootloader can freeze on a generic vbmeta |

The bootloader is unlocked (`verifiedbootstate=orange`,
`vbmeta.device_state=unlocked`), so it skips boot signature verification —
a modified `boot_a` boots fine while `vbmeta_a` stays stock.

---

## IMEI / NVRAM

The `l_fixnv1*`, `l_fixnv2*`, `l_deltanv*` and `prodnv.img` partitions hold
device-unique calibration and IMEI data. This backup preserves them, which is
why a full restore brings the phone back **exactly** as it was, including
network identity.

---

## Checksums

Verify after reassembly:

```bash
sha256sum -c checksums.txt
```

A mismatch means a truncated download — re-download that part and reassemble.
