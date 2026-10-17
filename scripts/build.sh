#!/bin/bash
set -uo pipefail
WORKDIR="$HOME/tecno_bg6_kernel"
KDIR="$WORKDIR/kernel_ums9230"
export PATH="$WORKDIR/toolchains/clang-r416183b/bin:$PATH"
export KBUILD_BUILD_USER="buildsrv-ci"
export KBUILD_BUILD_HOST="build-1-38"
cd "$KDIR"
mkdir -p out

echo "=== [3/5] verify kernelrelease ==="
COMPILED_REL=$(make -s O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CLANG_TRIPLE=aarch64-linux-gnu- kernelrelease)
echo "compiled: [$COMPILED_REL]"
echo "expected: [5.4.210-android12-9-gf8b17864a03c-ab602]"
if [ "$COMPILED_REL" != "5.4.210-android12-9-gf8b17864a03c-ab602" ]; then
  echo "ERROR: kernelrelease mismatch"; exit 1
fi
echo "release OK"

echo "=== [4/5] build Image (long step) ==="
make -j"$(nproc)" O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip CROSS_COMPILE=aarch64-linux-android- CLANG_TRIPLE=aarch64-linux-gnu- Image > /tmp/build_full.log 2>&1
BUILD_RC=$?
echo "build exit code: $BUILD_RC"
echo "=== build tail ==="
tail -40 /tmp/build_full.log
echo "=== warnings summary ==="
grep -iE "warning:|error:" /tmp/build_full.log | sort | uniq -c | sort -rn | head -30

echo "=== [5/5] verify Image ==="
ls -lh out/arch/arm64/boot/Image 2>&1
strings out/arch/arm64/boot/Image 2>/dev/null | grep -m1 "Linux version"
echo "BUILD_DONE rc=$BUILD_RC"
