@echo off
title TECNO BG6 - Full Stock ROM Restore via BROM (spd_dump)
echo ============================================================
echo   TECNO SPARK GO 2024 (BG6) - BROM FULL RESTORE SCRIPT
echo ============================================================
echo.
echo 1. Turn phone completely OFF.
echo 2. Hold Volume Down (or Vol Down + Vol Up) and plug in USB.
echo 3. The script will automatically flash all critical firmware partitions.
echo.
pause

set SPD=spd_dump.exe
set FDL1=fdl1-sign.bin
set FDL2=fdl2-sign.bin

%SPD% --wait 300 fdl %FDL1% 0x5500 fdl %FDL2% 0x9efffe00 write_part splloader splloader.bin write_part uboot_a uboot_a.img write_part sml_a sml_a.img write_part trustos_a trustos_a.img write_part teecfg_a teecfg_a.img write_part hypervsior_a hypervsior_a.img write_part pm_sys_a pm_sys_a.img write_part boot_a boot_a.bin write_part vendor_boot_a vendor_boot_a.img write_part init_boot_a init_boot_a.img write_part dtb_a dtb_a.img write_part dtbo_a dtbo_a.img write_part logo logo.img write_part fbootlogo fbootlogo.img write_part l_modem_a l_modem_a.img write_part l_gdsp_a l_gdsp_a.img write_part l_ldsp_a l_ldsp_a.img write_part l_agdsp_a l_agdsp_a.img write_part vbmeta_a vbmeta_a.img write_part vbmeta_system_a vbmeta_system_a.img write_part vbmeta_vendor_a vbmeta_vendor_a.img write_part vbmeta_product_a vbmeta_product_a.img write_part vbmeta_system_ext_a vbmeta_system_ext_a.img write_part vbmeta_odm_a vbmeta_odm_a.img write_part prodnv prodnv.img write_part miscdata miscdata.img write_part persist persist.img write_part calinv calinv.img reset

echo.
echo [*] Critical firmware and NVRAM restore complete!
echo [*] To restore super OS, merge super parts (Merge_Super_to_NTFS.bat) and flash via fastboot.
pause
