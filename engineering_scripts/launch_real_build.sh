#!/bin/bash
set -e

cat << 'EOF' > /nvme0n1-disk/shunno_os/run_build.sh
#!/bin/bash
cd /nvme0n1-disk/shunno_os
export USER=administrator
export LC_ALL=C
source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
m RELAX_USES_LIBRARY_CHECK=true BUILD_NUMBER=Sunno-OS-1.0 -j72 systemimage
EOF
chmod +x /nvme0n1-disk/shunno_os/run_build.sh
chown administrator:administrator /nvme0n1-disk/shunno_os/run_build.sh

sudo -u administrator bash -c '
nohup /nvme0n1-disk/shunno_os/run_build.sh > /nvme0n1-disk/shunno_os/build_sunno.log 2>&1 < /dev/null &
echo "BUILD_PID=$!"
sleep 8
ps -ef | grep -E "run_build|soong|ninja|kati" | grep -v grep || true
cat /nvme0n1-disk/shunno_os/build_sunno.log | tail -n 25
'
