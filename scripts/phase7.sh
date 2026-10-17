#!/bin/bash
set -uo pipefail
WORKDIR="$HOME/tecno_bg6_kernel"
KDIR="$WORKDIR/kernel_ums9230"
MAGISKBOOT="$WORKDIR/toolchains/magiskboot"

export PATH="$WORKDIR/toolchains/clang-r416183b/bin:$PATH"
export KBUILD_BUILD_USER="buildsrv-ci"
export KBUILD_BUILD_HOST="build-1-38"

MAKE_ARGS=(O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip)

cd "$KDIR"

echo "=== [0/5] SHADOW_CALL_STACK in Kconfig? ==="
grep -rn "SHADOW_CALL_STACK" arch/arm64/Kconfig | head -5 || echo "NOT IN KCONFIG"

echo "=== [1/5] make bg6_defconfig WITH CLANG_TRIPLE ==="
cp "$WORKDIR/backups/bg6_stock_defconfig" arch/arm64/configs/bg6_defconfig
make "${MAKE_ARGS[@]}" bg6_defconfig 2>&1 | tail -3

echo "=== [2/5] enforce SCS + disable OPLUS/Realme ==="
./scripts/config --file out/.config --set-str LOCALVERSION "" -d LOCALVERSION_AUTO -e MODVERSIONS -e MODULE_SIG -d MODULE_SIG_FORCE -d WERROR -e SHADOW_CALL_STACK -e SHADOW_CALL_STACK_VMAP -d OPLUS_FEATURE_PHOENIX -d OPLUS_SYSTEM_KERNEL -d HYBRIDSWAP -d HYBRIDSWAP_CORE -d HYBRIDSWAP_SWAPD -d TOUCHSCREEN_OMNIVISION_TCM -d TOUCHSCREEN_OMNIVISION_TCM_I2C 2>&1 | tail -5

make "${MAKE_ARGS[@]}" olddefconfig 2>&1 | tail -3

echo "=== [3/5] GATE 7A ==="
grep -E "CONFIG_SHADOW_CALL_STACK|CONFIG_OPLUS_FEATURE_PHOENIX|CONFIG_HYBRIDSWAP" out/.config || echo "(none)"
if ! grep -q "CONFIG_SHADOW_CALL_STACK=y" out/.config; then echo "FATAL: SCS still missing"; fi
if grep -q "CONFIG_OPLUS_FEATURE_PHOENIX=y" out/.config; then echo "FATAL: phoenix still on"; fi

COMPILED_REL=$(make -s "${MAKE_ARGS[@]}" kernelrelease)
echo "kernelrelease: $COMPILED_REL"

echo "=== [4/5] compile Image ==="
make -j"$(nproc)" "${MAKE_ARGS[@]}" Image > /tmp/build_v2.log 2>&1
echo "build rc=$?"

echo "=== [5/5] GATE 7B ==="
ls -lh out/arch/arm64/boot/Image
stat -c "Image bytes: %s (stock 38711808)" out/arch/arm64/boot/Image
echo "scs_init:"; grep "scs_init" out/System.map || echo "  MISSING!"
echo "phoenix/oplus:"; grep -iE "phoenix|oplus|phx_" out/System.map | head -5 || echo "  (none)"
echo "BUILD_V2_DONE"
