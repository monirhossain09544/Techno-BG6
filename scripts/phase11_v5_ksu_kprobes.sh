#!/bin/bash
set -uo pipefail
WORKDIR="$HOME/tecno_bg6_kernel"
KDIR="$WORKDIR/kernel_ums9230"
MAGISKBOOT="$WORKDIR/toolchains/magiskboot"

export KBUILD_BUILD_USER="Monir"
export KBUILD_BUILD_HOST="tecno-bg6-v5-ksu"
export PATH="$WORKDIR/toolchains/clang-r416183b/bin:$PATH"

COMMON_MAKE_ARGS=(O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip)

cd "$KDIR"

echo "=== [0/5] Backup v4-ksu-dbg golden (safety) ==="
mkdir -p "$WORKDIR/golden_v4"
[ -f "$WORKDIR/bg6_boot_a_v4_ksu_dbg.img" ] && cp -f "$WORKDIR/bg6_boot_a_v4_ksu_dbg.img" "$WORKDIR/golden_v4/" || true
cp -f out/.config "$WORKDIR/golden_v4/bg6_golden_v4_dbg_defconfig" 2>/dev/null || true
cp -f out/arch/arm64/boot/Image "$WORKDIR/golden_v4/Image_v4_dbg" 2>/dev/null || true
echo "v4-dbg archived."

echo "=== [1/5] Config: KSU + KPROBES (MATCH STOCK) + ABI intact ==="
cp "$WORKDIR/golden_v3/bg6_golden_v3_defconfig" out/.config
./scripts/config --file out/.config \
  --set-str LOCALVERSION "" \
  -e KSU \
  -e KSU_DEBUG \
  -e KPROBES \
  -e KPROBE_EVENTS \
  -e LTO_CLANG \
  -e SHADOW_CALL_STACK \
  -e SHADOW_CALL_STACK_VMAP \
  -e MODVERSIONS \
  -e MODULE_SIG \
  -d MODULE_SIG_FORCE \
  -d OPLUS_FEATURE_PHOENIX \
  -d IOSCHED_BFQ

make "${COMMON_MAKE_ARGS[@]}" olddefconfig 2>&1 | tail -3

echo "=== [2/5] GATE 10A: KSU+KPROBES on, ABI intact ==="
grep -E "CONFIG_KSU=|CONFIG_KSU_DEBUG=|CONFIG_KPROBES=|CONFIG_SHADOW_CALL_STACK=|CONFIG_LTO_CLANG=|CONFIG_CFI_CLANG=|CONFIG_MODVERSIONS=|CONFIG_MODULE_SIG=" out/.config || true
grep -q "CONFIG_KSU=y" out/.config || { echo "FATAL: KSU not enabled"; exit 1; }
grep -q "CONFIG_KPROBES=y" out/.config || { echo "FATAL: KPROBES not enabled"; exit 1; }
grep -q "CONFIG_SHADOW_CALL_STACK=y" out/.config || { echo "FATAL: SCS dropped"; exit 1; }
grep -q "CONFIG_LTO_CLANG=y" out/.config || { echo "FATAL: LTO dropped"; exit 1; }
grep -q "CONFIG_CFI_CLANG=y" out/.config || { echo "FATAL: CFI dropped"; exit 1; }

COMPILED_REL=$(make -s "${COMMON_MAKE_ARGS[@]}" kernelrelease)
echo "kernelrelease: $COMPILED_REL"
[ "$COMPILED_REL" = "5.4.210-android12-9-gf8b17864a03c-ab602" ] || { echo "FATAL: release changed"; exit 1; }

echo "=== [3/5] Build v5 KernelSU+KPROBES Image (LTO ~10 min) ==="
make -j"$(nproc)" "${COMMON_MAKE_ARGS[@]}" Image > /tmp/build_v5.log 2>&1
BRC=$?
echo "build rc=$BRC"
tail -3 /tmp/build_v5.log
[ "$BRC" -eq 0 ] || { echo "FATAL: build failed"; exit 1; }

echo "=== [4/5] GATE 10B: symbols ==="
grep -c "scs_init" out/System.map || true
grep "ksu_handle_execveat" out/System.map | head -3
grep -c "kprobe" out/System.map || true
grep -iE "phoenix|oplus" out/System.map | head -3 || echo "(no phoenix/oplus)"
ls -lh out/arch/arm64/boot/Image

echo "=== [5/5] Repack clean ramdisk ==="
mkdir -p "$WORKDIR/extracted/boot_v5"
cd "$WORKDIR/extracted/boot_v5"
cp "$WORKDIR/backups/boot_a.img" ./boot.img
"$MAGISKBOOT" unpack -h boot.img 2>&1 | tail -8
if "$MAGISKBOOT" cpio ramdisk.cpio test 2>/dev/null; then
    "$MAGISKBOOT" cpio ramdisk.cpio restore 2>&1 || true
    echo "ramdisk restored (clean stock)"
fi
cp "$KDIR/out/arch/arm64/boot/Image" ./kernel
"$MAGISKBOOT" repack boot.img "$WORKDIR/bg6_boot_a_v5_ksu_kprobes.img" 2>&1 | tail -8
ls -lh "$WORKDIR/bg6_boot_a_v5_ksu_kprobes.img"
echo "[READY] v5 KSU+KPROBES boot image"
echo "V5_DONE"
