import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
set -e
CLANG="/nvme0n1-disk/shunno_os/prebuilts/clang/host/linux-x86/clang-r498229b/bin/clang"
SYSROOT="/nvme0n1-disk/shunno_os/out/soong/ndk/sysroot"
CRTBEGIN="/nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libc/crtbegin_dynamic/android_arm64_armv8-a"
CRTEND="/nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libc/crtend_android/android_arm64_armv8-a"
SYSLIB="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/lib64"
BIONIC_LIB="/nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libc/libc/android_arm64_armv8-a_shared_current/0e7aadb4ccf134e3003f27a606ef3a68"

cp /nvme0n1-disk/infinity_x/bg6_perf_engine.cpp /nvme0n1-disk/infinity_x/bg6_perf_engine.c

$CLANG --target=aarch64-linux-android34 --sysroot=$SYSROOT \
    -B$CRTBEGIN -B$CRTEND -L$BIONIC_LIB -L$SYSLIB \
    -O3 -mcpu=cortex-a75 -flto=thin -fPIE -pie \
    -Wall -Wextra \
    /nvme0n1-disk/infinity_x/bg6_perf_engine.c \
    -o /nvme0n1-disk/infinity_x/bg6_perf_engine

ls -lh /nvme0n1-disk/infinity_x/bg6_perf_engine
file /nvme0n1-disk/infinity_x/bg6_perf_engine
readelf -d /nvme0n1-disk/infinity_x/bg6_perf_engine | grep -E "NEEDED|INTERP" || true
readelf -l /nvme0n1-disk/infinity_x/bg6_perf_engine | grep interpreter || true
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
err = stderr.read().decode("utf-8", errors="ignore")
if err:
    print("STDERR:", err)
client.close()
