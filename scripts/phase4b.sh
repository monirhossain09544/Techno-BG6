#!/usr/bin/env bash
set -euo pipefail

WORKDIR="$HOME/tecno_bg6_kernel"
KDIR="$WORKDIR/kernel_ums9230"

# 1. Apply the deterministic TECNO-BG6 patches
python3 "$WORKDIR/apply_bg6_patches.py"

# 2. Export exact r416183b Clang (12.0.5) + GCC 4.9 binutils
export PATH="$WORKDIR/toolchains/clang-r416183b/bin:$WORKDIR/toolchains/aarch64-linux-android-4.9/bin:$PATH"
export KBUILD_BUILD_USER="buildsrv-ci"
export KBUILD_BUILD_HOST="build-1-38"

cd "$KDIR"
mkdir -p out

# 3. Generate .config from bg6_defconfig
make O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 bg6_defconfig

# 4. Re-verify CONFIG_LOCALVERSION_AUTO and CONFIG_MODULE_SIG_FORCE are off, while MODVERSIONS & MODULE_SIG remain on
./scripts/config --file out/.config \
  --set-str LOCALVERSION "" \
  -d LOCALVERSION_AUTO \
  -e MODVERSIONS \
  -e MODULE_SIG \
  -d MODULE_SIG_FORCE \
  -d WERROR

make O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 olddefconfig

# 5. GATE 4A: Verify kernelrelease matches 5.4.210-android12-9-gf8b17864a03c-ab602
COMPILED_REL=$(make -s O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 kernelrelease)
STOCK_REL="5.4.210-android12-9-gf8b17864a03c-ab602"
echo "Compiled release : '$COMPILED_REL'"
echo "Expected release : '$STOCK_REL'"
if [[ "$COMPILED_REL" != "$STOCK_REL" ]]; then
    echo "ERROR: kernelrelease mismatch! Stopping build."
    exit 1
fi

# 6. Compile uncompressed Image target only
make -j"$(nproc)" O=out \
  ARCH=arm64 \
  LLVM=1 \
  LLVM_IAS=1 \
  CC=clang \
  LD=ld.lld \
  AR=llvm-ar \
  NM=llvm-nm \
  OBJCOPY=llvm-objcopy \
  OBJDUMP=llvm-objdump \
  STRIP=llvm-strip \
  CROSS_COMPILE=aarch64-linux-android- \
  Image

# 7. GATE 4B: Verify output binary and Linux banner
ls -lh out/arch/arm64/boot/Image
strings out/arch/arm64/boot/Image | grep "Linux version 5.4.210-android12-9-gf8b17864a03c-ab602"
