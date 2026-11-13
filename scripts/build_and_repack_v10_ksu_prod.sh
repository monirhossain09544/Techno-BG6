#!/bin/bash
# Reproducible builder & AVBf-preserving boot_a repacker for TECNO BG6 (Stock HiOS 13 v10 KernelSU)
set -euo pipefail

WORKDIR="${WORKDIR:-$HOME/tecno_bg6_kernel}"
KDIR="${KDIR:-$WORKDIR/kernel_ums9230}"
STOCK_BOOT="${STOCK_BOOT:-$WORKDIR/boot_a.bin}"
OUT_BOOT="${OUT_BOOT:-$WORKDIR/bg6_boot_a_v10_ksu_avbf.img}"

export KBUILD_BUILD_VERSION="1"
export KBUILD_BUILD_USER="buildsrv-ci"
export KBUILD_BUILD_HOST="build-1-38"
export KBUILD_BUILD_TIMESTAMP="Tue Jul 22 17:31:18 CST 2025"
export PATH="$WORKDIR/toolchains/clang-r416183b/bin:$WORKDIR/toolchains/aarch64-linux-android-4.9/bin:$PATH"

COMMON_MAKE_ARGS=(
  O=out
  ARCH=arm64
  LLVM=1
  LLVM_IAS=1
  CC=clang
  CLANG_TRIPLE=aarch64-linux-gnu-
  CROSS_COMPILE=aarch64-linux-android-
  LD=ld.lld
  AR=llvm-ar
  NM=llvm-nm
  OBJCOPY=llvm-objcopy
  OBJDUMP=llvm-objdump
  STRIP=llvm-strip
)

cd "$KDIR"

echo "=== [1/4] Verifying out/.config Golden ABI & Security Gates ==="
grep -q "^CONFIG_KSU=y$" out/.config || { echo "FATAL: CONFIG_KSU!=y"; exit 1; }
grep -q "^# CONFIG_KSU_DEBUG is not set$" out/.config || { echo "FATAL: CONFIG_KSU_DEBUG still enabled!"; exit 1; }
grep -q "^CONFIG_KPROBES=y$" out/.config || { echo "FATAL: CONFIG_KPROBES!=y"; exit 1; }
grep -q "^CONFIG_SECURITY_SELINUX=y$" out/.config || { echo "FATAL: SELinux!=y"; exit 1; }
grep -q "^CONFIG_SHADOW_CALL_STACK=y$" out/.config || { echo "FATAL: SCS dropped!"; exit 1; }
grep -q "^CONFIG_SHADOW_CALL_STACK_VMAP=y$" out/.config || { echo "FATAL: SCS_VMAP dropped!"; exit 1; }
grep -q "^CONFIG_LTO_CLANG=y$" out/.config || { echo "FATAL: LTO dropped!"; exit 1; }
grep -q "^CONFIG_CFI_CLANG=y$" out/.config || { echo "FATAL: CFI dropped!"; exit 1; }
grep -q "^CONFIG_MODVERSIONS=y$" out/.config || { echo "FATAL: MODVERSIONS dropped!"; exit 1; }
grep -q "^CONFIG_MODULE_SIG=y$" out/.config || { echo "FATAL: MODULE_SIG dropped!"; exit 1; }
grep -q "^# CONFIG_MODULE_SIG_FORCE is not set$" out/.config || { echo "FATAL: MODULE_SIG_FORCE enabled!"; exit 1; }

COMPILED_REL=$(make -s "${COMMON_MAKE_ARGS[@]}" kernelrelease)
[ "$COMPILED_REL" = "5.4.210-android12-9-gf8b17864a03c-ab602" ] || { echo "FATAL: kernelrelease mismatch ($COMPILED_REL)!"; exit 1; }

echo "=== [2/4] Building ARM64 Image with exact Stock HiOS 13 banner ==="
rm -f out/include/generated/compile.h out/init/version.o
make -j"$(nproc)" "${COMMON_MAKE_ARGS[@]}" Image

echo "=== [3/4] Verifying symbols & Linux version string ==="
if grep -q "ksu_debug_manager_uid" out/System.map; then
  echo "FATAL: ksu_debug_manager_uid present in System.map!"
  exit 1
fi
STOCK_BANNER="Linux version 5.4.210-android12-9-gf8b17864a03c-ab602 (buildsrv-ci@build-1-38) (Android (7284624, based on r416183b) clang version 12.0.5 (https://android.googlesource.com/toolchain/llvm-project c935d99d7cf2016289302412d708641d52d2f7ee), LLD 12.0.5 (/buildbot/src/android/llvm-toolchain/out/llvm-project/lld c935d99d7cf2016289302412d708641d52d2f7ee)) #1 SMP PREEMPT Tue Jul 22 17:31:18 CST 2025"
ACTUAL_BANNER=$(strings out/arch/arm64/boot/Image | grep -m1 "Linux version 5.4.210")
[ "$ACTUAL_BANNER" = "$STOCK_BANNER" ] || { echo "FATAL: Banner mismatch vs Stock ROM!"; exit 1; }

echo "=== [4/4] Repacking 64 MiB boot_a preserving unmodified Stock ramdisk & AVBf trailer ==="
python3 - "$STOCK_BOOT" "out/arch/arm64/boot/Image" "$OUT_BOOT" <<'PYEOF'
import hashlib, struct, sys

stock_boot, k_img_path, out_boot = sys.argv[1], sys.argv[2], sys.argv[3]
s = open(stock_boot, "rb").read()
k10 = open(k_img_path, "rb").read()

assert len(s) == 67108864, "Stock boot_a must be 67,108,864 bytes (64 MiB)"
assert k10[0x38:0x3C] == b"ARMd", "Invalid ARM64 Image magic"

old_ksz, rsz = struct.unpack("<II", s[8:16])
align = lambda x: (x + 4095) & ~4095
old_r_off = 4096 + align(old_ksz)
new_ksz = len(k10)
new_r_off = 4096 + align(new_ksz)
vbm_off = 0x266C000  # 40,288,256

assert new_r_off + align(rsz) <= vbm_off, "Payload exceeds AVB descriptor offset!"

buf = bytearray(s)
struct.pack_into("<I", buf, 8, new_ksz)
buf[4096:vbm_off] = b"\x00" * (vbm_off - 4096)
buf[4096 : 4096 + new_ksz] = k10
buf[new_r_off : new_r_off + rsz] = s[old_r_off : old_r_off + rsz]

with open(out_boot, "wb") as f:
    f.write(buf)

print(f"Repacked {out_boot}: size={len(buf)}, kernel={new_ksz}, ramdisk={rsz}, sha256={hashlib.sha256(buf).hexdigest()}")
PYEOF
