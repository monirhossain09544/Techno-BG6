#!/bin/bash
set -uo pipefail
WORKDIR="$HOME/tecno_bg6_kernel"
KDIR="$WORKDIR/kernel_ums9230"
MAGISKBOOT="$WORKDIR/toolchains/magiskboot"

export KBUILD_BUILD_USER="Monir"
export KBUILD_BUILD_HOST="tecno-bg6-v3"

export PATH="$WORKDIR/toolchains/clang-r416183b/bin:$PATH"

COMMON_MAKE_ARGS=(O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip)

cd "$KDIR"

echo "=== [1/5] Golden defconfig -> out/.config ==="
cp "$WORKDIR/golden_v2/bg6_golden_v2_defconfig" out/.config

echo "=== [2/5] v3 additions (BBR+FQ+LZ4HC, NO BFQ, keep ZSTD+LTO) ==="
./scripts/config --file out/.config \
  --set-str LOCALVERSION "" \
  -d LOCALVERSION_AUTO \
  -e LTO_CLANG \
  -e SHADOW_CALL_STACK \
  -e SHADOW_CALL_STACK_VMAP \
  -e MODVERSIONS \
  -e MODULE_SIG \
  -d MODULE_SIG_FORCE \
  -d WERROR \
  -d OPLUS_FEATURE_PHOENIX \
  -d HYBRIDSWAP \
  -d IOSCHED_BFQ \
  -e TCP_CONG_ADVANCED \
  -e TCP_CONG_BBR \
  -e NET_SCH_FQ \
  -e DEFAULT_BBR \
  --set-str DEFAULT_TCP_CONG "bbr" \
  -e CRYPTO_LZ4 \
  -e CRYPTO_LZ4HC \
  -e CRYPTO_ZSTD \
  -e CPU_FREQ_GOV_SCHEDUTIL \
  -e CPU_FREQ_DEFAULT_GOV_SCHEDUTIL \
  -e CPU_FREQ_GOV_PERFORMANCE \
  -e MQ_IOSCHED_DEADLINE \
  -e MQ_IOSCHED_KYBER

make "${COMMON_MAKE_ARGS[@]}" olddefconfig 2>&1 | tail -3

echo "=== [3/5] GATE 8A ==="
grep -q "CONFIG_LTO_CLANG=y" out/.config || { echo "FATAL: LTO lost!"; exit 1; }
grep -q "CONFIG_SHADOW_CALL_STACK=y" out/.config || { echo "FATAL: SCS lost!"; exit 1; }
grep -q "CONFIG_TCP_CONG_BBR=y" out/.config || { echo "FATAL: BBR not enabled!"; exit 1; }
if grep -q "CONFIG_IOSCHED_BFQ=y" out/.config; then echo "FATAL: BFQ still on!"; exit 1; fi
grep -E "CONFIG_LTO_CLANG=|CONFIG_SHADOW_CALL_STACK=|CONFIG_TCP_CONG_BBR=|CONFIG_DEFAULT_TCP_CONG=|CONFIG_CRYPTO_LZ4HC=|CONFIG_CRYPTO_ZSTD=|CONFIG_MQ_IOSCHED_KYBER=|CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL=|CONFIG_IOSCHED_BFQ=" out/.config

COMPILED_REL=$(make -s "${COMMON_MAKE_ARGS[@]}" kernelrelease)
if [ "$COMPILED_REL" != "5.4.210-android12-9-gf8b17864a03c-ab602" ]; then echo "FATAL: kernelrelease changed"; exit 1; fi
echo "[PASS] Gate 8A: kernelrelease locked to $COMPILED_REL"

echo "=== [4/5] Compiling v3 (LTO ~10 min) ==="
make -j"$(nproc)" "${COMMON_MAKE_ARGS[@]}" Image > /tmp/build_v3.log 2>&1
echo "build rc=$?"

echo "=== [5/5] GATE 8B + repack ==="
grep "scs_init" out/System.map
grep -E "bbr_register|tcp_bbr" out/System.map
if grep -iE "phx_handle_hang_oplus|phoenix_hlos_watchdog_init" out/System.map; then echo "FATAL: phoenix back"; exit 1; fi
strings out/arch/arm64/boot/Image | grep "Linux version 5.4.210-android12-9-gf8b17864a03c-ab602"
ls -lh out/arch/arm64/boot/Image

cd "$WORKDIR/extracted/boot"
cp "$KDIR/out/arch/arm64/boot/Image" ./kernel
"$MAGISKBOOT" repack boot.img "$WORKDIR/bg6_boot_a_v3_perf.img"
ls -lh "$WORKDIR/bg6_boot_a_v3_perf.img"
echo "[READY] v3 perf boot image created"
echo "V3_DONE"
