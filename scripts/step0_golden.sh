
set -euo pipefail
WORKDIR="$HOME/tecno_bg6_kernel"
KDIR="$WORKDIR/kernel_ums9230"

mkdir -p "$WORKDIR/golden_v2"
cp "$KDIR/out/.config" "$WORKDIR/golden_v2/bg6_golden_v2_defconfig"
cp "$KDIR/out/arch/arm64/boot/Image" "$WORKDIR/golden_v2/Image_v2_working"
cp "$WORKDIR/bg6_test_boot_a_v2.img" "$WORKDIR/golden_v2/bg6_boot_a_v2_working.img"
cp "$WORKDIR/golden_v2/bg6_golden_v2_defconfig" "$KDIR/arch/arm64/configs/bg6_golden_defconfig"

cd "$KDIR"
git add -A
git commit -m "TECNO-BG6: v2 golden working baseline (5.4.210, SCS enabled, OPLUS Phoenix removed)" || true
git tag -f v2-golden-baseline
echo "[OK] Golden v2 baseline locked and tagged!"
