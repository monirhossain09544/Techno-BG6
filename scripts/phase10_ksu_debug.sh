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

echo "=== [1/4] Enable CONFIG_KSU_DEBUG ==="
./scripts/config --file out/.config -e KSU_DEBUG
make "${COMMON_MAKE_ARGS[@]}" olddefconfig 2>&1 | tail -3

echo "=== [2/4] GATE: KSU_DEBUG on, ABI intact ==="
grep -E "CONFIG_KSU=|CONFIG_KSU_DEBUG=|CONFIG_SHADOW_CALL_STACK=|CONFIG_LTO_CLANG=|CONFIG_CFI_CLANG=|CONFIG_KPROBES=" out/.config
grep -q "CONFIG_KSU_DEBUG=y" out/.config || { echo "FATAL: KSU_DEBUG not enabled"; exit 1; }
COMPILED_REL=$(make -s "${COMMON_MAKE_ARGS[@]}" kernelrelease)
echo "kernelrelease: $COMPILED_REL"
[ "$COMPILED_REL" = "5.4.210-android12-9-gf8b17864a03c-ab602" ] || { echo "FATAL: release changed"; exit 1; }

echo "=== [3/4] Build (LTO ~10 min) ==="
make -j"$(nproc)" "${COMMON_MAKE_ARGS[@]}" Image > /tmp/build_v4dbg.log 2>&1
echo "build rc=$?"

echo "=== [4/4] Repack clean ramdisk ==="
grep "ksu_grant_root_to_shell" out/System.map 2>/dev/null || echo "(note: ksu_grant_root_to_shell may be inlined)"
ls -lh out/arch/arm64/boot/Image

mkdir -p "$WORKDIR/extracted/boot_ksu"
cd "$WORKDIR/extracted/boot_ksu"
cp "$WORKDIR/backups/boot_a.img" ./boot.img
"$MAGISKBOOT" unpack -h boot.img 2>&1 | tail -2
"$MAGISKBOOT" cpio ramdisk.cpio restore 2>&1 | tail -2
cp "$KDIR/out/arch/arm64/boot/Image" ./kernel
"$MAGISKBOOT" repack boot.img "$WORKDIR/bg6_boot_a_v4_ksu_dbg.img" 2>&1 | tail -3
ls -lh "$WORKDIR/bg6_boot_a_v4_ksu_dbg.img"
echo "[READY] v4 KSU debug boot image"
echo "V4DBG_DONE"
