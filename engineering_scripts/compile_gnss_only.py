import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
set -e
cd /nvme0n1-disk/infinity_x/mock_work

CLANG="/nvme0n1-disk/shunno_os/prebuilts/clang/host/linux-x86/clang-r498229b/bin/clang"
CRTBEGIN="/nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libc/crtbegin_dynamic/android_arm64_armv8-a/crtbegin_dynamic.o"
CRTEND=$(find /nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libc -name "crtend_android.o" | grep "android_arm64_armv8-a/" | head -n 1)
LIBC_SO=$(find /nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libc -name "libc.so" | grep "android_arm64" | head -n 1)
LIBDL_SO=$(find /nvme0n1-disk/shunno_os/out/soong/.intermediates/bionic/libdl -name "libdl.so" | grep "android_arm64" | head -n 1)

echo "CRTBEGIN=$CRTBEGIN"
echo "CRTEND=$CRTEND"
echo "LIBC_SO=$LIBC_SO"
echo "LIBDL_SO=$LIBDL_SO"

mkdir -p sysroot_lib
cp "$CRTBEGIN" sysroot_lib/crtbegin_dynamic.o
cp "$CRTEND" sysroot_lib/crtend_android.o
cp "$LIBC_SO" sysroot_lib/libc.so
cp "$LIBDL_SO" sysroot_lib/libdl.so

$CLANG --target=aarch64-linux-android34 \
    -nostdlib \
    -isystem "/nvme0n1-disk/shunno_os/bionic/libc/include" \
    -isystem "/nvme0n1-disk/shunno_os/bionic/libc/kernel/uapi" \
    -isystem "/nvme0n1-disk/shunno_os/bionic/libc/kernel/uapi/asm-arm64" \
    -isystem "/nvme0n1-disk/shunno_os/bionic/libc/kernel/android/uapi" \
    -Wl,-dynamic-linker,/system/bin/linker64 \
    sysroot_lib/crtbegin_dynamic.o \
    -O2 -Wall gnss_kernel_engine.c \
    -Lsysroot_lib -lc -ldl \
    sysroot_lib/crtend_android.o \
    -o gnss_kernel_engine

file gnss_kernel_engine
ls -lh gnss_kernel_engine kernel-gps framework.jar services.jar
echo "GNSS_KERNEL_ENGINE_COMPILED_OK"
"""

stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
