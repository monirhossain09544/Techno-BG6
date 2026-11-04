@echo off
title BG6 - Boot to Fastbootd / Restore boot_a (BROM mode)
echo ============================================
echo  TECNO BG6 - BROM to Fastbootd Recovery
echo ============================================
spd_dump.exe --wait 300 exec_addr 0x65015f08 fdl fdl1-dl.bin 0x65000800 fdl fdl2-dl.bin 0x9efffe00 exec w misc misc_fastbootd.img reset
echo.
echo [*] Phone is now booting into fastbootd!
pause
