#!/bin/bash
set -uo pipefail
WORKDIR="$HOME/tecno_bg6_kernel"
KDIR="$WORKDIR/kernel_ums9230"
MAGISKBOOT="$WORKDIR/toolchains/magiskboot"

export KBUILD_BUILD_USER="Monir"
export KBUILD_BUILD_HOST="tecno-bg6-v4-ksu"
export PATH="$WORKDIR/toolchains/clang-r416183b/bin:$PATH"

COMMON_MAKE_ARGS=(O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip)

cd "$KDIR"

echo "=== [1/4] Config: enable KSU, keep KPROBES off + ABI ==="
cp "$WORKDIR/golden_v3/bg6_golden_v3_defconfig" out/.config
./scripts/config --file out/.config \
  --set-str LOCALVERSION "" \
  -e KSU \
  -d KPROBES \
  -d KPROBE_EVENTS \
  -e LTO_CLANG \
  -e SHADOW_CALL_STACK \
  -e SHADOW_CALL_STACK_VMAP \
  -e MODVERSIONS \
  -e MODULE_SIG \
  -d MODULE_SIG_FORCE \
  -d OPLUS_FEATURE_PHOENIX \
  -d IOSCHED_BFQ

make "${COMMON_MAKE_ARGS[@]}" olddefconfig 2>&1 | tail -3

echo "=== [2/4] GATE 9A: KSU on, KPROBES off, ABI intact ==="
grep -E "CONFIG_KSU=|CONFIG_KPROBES=|CONFIG_SHADOW_CALL_STACK=|CONFIG_LTO_CLANG=|CONFIG_CFI_CLANG=" out/.config || true
if ! grep -q "CONFIG_KSU=y" out/.config; then echo "FATAL: KSU not enabled!"; exit 1; fi
if grep -q "CONFIG_KPROBES=y" out/.config; then echo "FATAL: KPROBES enabled!"; exit 1; fi

COMPILED_REL=$(make -s "${COMMON_MAKE_ARGS[@]}" kernelrelease)
echo "kernelrelease: $COMPILED_REL"
[ "$COMPILED_REL" = "5.4.210-android12-9-gf8b17864a03c-ab602" ] || { echo "FATAL: release changed"; exit 1; }

echo "=== [3/4] Build v4 KernelSU Image ==="
make -j"$(nproc)" "${COMMON_MAKE_ARGS[@]}" Image > /tmp/build_v4.log 2>&1
echo "build rc=$?"

echo "=== [4/4] GATE 9B + repack clean-ramdisk ==="
grep "scs_init" out/System.map
grep "ksu_handle_execveat" out/System.map
ls -lh out/arch/arm64/boot/Image

mkdir -p "$WORKDIR/extracted/boot_ksu"
cd "$WORKDIR/extracted/boot_ksu"
cp "$WORKDIR/backups/boot_a.img" ./boot.img
"$MAGISKBOOT" unpack -h boot.img 2>&1 | tail -8
if "$MAGISKBOOT" cpio ramdisk.cpio test 2>/dev/null; then
    "$MAGISKBOOT" cpio ramdisk.cpio restore 2>&1 || true
    echo "ramdisk restored (clean stock)"
fi
cp "$KDIR/out/arch/arm64/boot/Image" ./kernel
"$MAGISKBOOT" repack boot.img "$WORKDIR/bg6_boot_a_v4_ksu.img" 2>&1 | tail -8
ls -lh "$WORKDIR/bg6_boot_a_v4_ksu.img"
echo "[READY] v4 KSU boot image"
echo "V4_DONE"
