#!/bin/bash
# ============================================================
# TECNO BG6 Kernel — One-Shot New Server Bootstrap
# Reproduces the entire build environment from local backups.
#
# USAGE:
#   1. Copy these files into ~/bg6_restore/ on the NEW server:
#        kernel_repo.bundle
#        portable_bundle.tar.gz        (scripts + KernelSU + configs)
#        bg6_project_full_backup.tar.gz (optional, extras)
#        bootstrap_new_server.sh       (this script)
#   2. bash bootstrap_new_server.sh
# ============================================================
set -uo pipefail

RESTORE_DIR="$(cd "$(dirname "$0")" && pwd)"
WORKDIR="$HOME/tecno_bg6_kernel"

echo "=============================================="
echo " TECNO BG6 Kernel — New Server Bootstrap"
echo " Restore dir: $RESTORE_DIR"
echo "=============================================="

# ---------- 1. Dependencies ----------
echo "=== [1/6] Installing dependencies (needs sudo) ==="
SUDO=""
if [ "$(id -u)" -ne 0 ]; then SUDO="sudo"; fi
$SUDO apt-get update -qq
$SUDO apt-get install -y -qq \
  git make bc bison flex libssl-dev libelf-dev libncurses-dev \
  zstd cpio rsync unzip wget curl python3 xz-utils file \
  2>&1 | tail -3
echo "deps installed"

# ---------- 2. Kernel source from bundle ----------
echo "=== [2/6] Restoring kernel source from bundle ==="
mkdir -p "$WORKDIR"
if [ ! -d "$WORKDIR/kernel_ums9230/.git" ]; then
  git clone "$RESTORE_DIR/kernel_repo.bundle" "$WORKDIR/kernel_ums9230"
else
  echo "kernel source already present, skipping"
fi
cd "$WORKDIR/kernel_ums9230"
echo "--- available tags ---"
git tag
echo "--- HEAD ---"
git log --oneline -4

# ---------- 3. Scripts + defconfigs ----------
echo "=== [3/6] Restoring scripts and defconfigs ==="
mkdir -p /tmp/bg6_portable
tar xzf "$RESTORE_DIR/portable_bundle.tar.gz" -C /tmp/bg6_portable 2>/dev/null || true
if [ -d /tmp/bg6_portable/portable_bundle ]; then
  cp -a /tmp/bg6_portable/portable_bundle/*.py "$WORKDIR/" 2>/dev/null || true
  cp -a /tmp/bg6_portable/portable_bundle/*.sh "$WORKDIR/" 2>/dev/null || true
  cp -a /tmp/bg6_portable/portable_bundle/*.md "$WORKDIR/" 2>/dev/null || true
  mkdir -p "$WORKDIR/backups" "$WORKDIR/golden_v2" "$WORKDIR/golden_v3" "$WORKDIR/golden_v4"
  cp -a /tmp/bg6_portable/portable_bundle/bg6_stock_defconfig "$WORKDIR/backups/" 2>/dev/null || true
  cp -a /tmp/bg6_portable/portable_bundle/bg6_golden_v2_defconfig "$WORKDIR/golden_v2/" 2>/dev/null || true
  cp -a /tmp/bg6_portable/portable_bundle/bg6_golden_v3_defconfig "$WORKDIR/golden_v3/" 2>/dev/null || true
  cp -a /tmp/bg6_portable/portable_bundle/bg6_golden_v4_ksu_defconfig "$WORKDIR/golden_v4/" 2>/dev/null || true
  cp -a /tmp/bg6_portable/portable_bundle/stock_kallsyms.txt "$WORKDIR/forensics/" 2>/dev/null || true
  echo "scripts + configs restored"
fi

# ---------- 4. Toolchain ----------
echo "=== [4/6] Fetching AOSP clang r416183b (~1.4GB) ==="
mkdir -p "$WORKDIR/toolchains"
cd "$WORKDIR/toolchains"
if [ ! -x clang-r416183b/bin/clang ]; then
  if [ ! -f clang-r416183b.tar.gz ]; then
    curl -L --progress-bar -o clang-r416183b.tar.gz \
      "https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android12-release/clang-r416183b.tar.gz"
  fi
  mkdir -p clang-r416183b
  tar xzf clang-r416183b.tar.gz -C clang-r416183b
fi
echo "clang: $(clang-r416183b/bin/clang --version 2>/dev/null | head -1)"

# magiskboot from Magisk APK
if [ ! -x "$WORKDIR/toolchains/magiskboot" ]; then
  echo "=== fetching magiskboot ==="
  MAGISK_URL="https://github.com/topjohnwu/Magisk/releases/download/v27.0/Magisk-v27.0.apk"
  curl -L --progress-bar -o /tmp/magisk.apk "$MAGISK_URL" || true
  if [ -f /tmp/magisk.apk ]; then
    cd /tmp && rm -rf mbx && mkdir mbx && cd mbx
    unzip -o -q /tmp/magisk.apk 'lib/arm64-v8a/libmagiskboot.so' 2>/dev/null || true
    if [ -f lib/arm64-v8a/libmagiskboot.so ]; then
      cp lib/arm64-v8a/libmagiskboot.so "$WORKDIR/toolchains/magiskboot"
      chmod +x "$WORKDIR/toolchains/magiskboot"
      echo "magiskboot installed"
    fi
  fi
fi

# ---------- 5. Phone backups ----------
echo "=== [5/6] Phone backups (boot_a.img etc) ==="
echo "ACTION REQUIRED: copy these from your PC/D: drive into $WORKDIR/backups/"
echo "  boot_a.img  vendor_boot_a.img  dtbo_a.img  vbmeta_a.img"
echo "  (these are REQUIRED to repack a boot image)"
ls -la "$WORKDIR/backups/" 2>/dev/null || echo "  (none yet)"

# ---------- 6. Sanity check build ----------
echo "=== [6/6] Sanity check ==="
cd "$WORKDIR/kernel_ums9230"
export PATH="$WORKDIR/toolchains/clang-r416183b/bin:$PATH"
ARGS=(O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip)
if [ -f "$WORKDIR/golden_v3/bg6_golden_v3_defconfig" ]; then
  cp "$WORKDIR/golden_v3/bg6_golden_v3_defconfig" out/.config
  make "${ARGS[@]}" olddefconfig > /dev/null 2>&1
  REL=$(make -s "${ARGS[@]}" kernelrelease 2>/dev/null)
  echo "kernelrelease = $REL"
  echo "(must equal: 5.4.210-android12-9-gf8b17864a03c-ab602)"
fi

echo
echo "=============================================="
echo " BOOTSTRAP COMPLETE"
echo "=============================================="
echo "Build with:"
echo "  cd $WORKDIR/kernel_ums9230"
echo "  bash $WORKDIR/phase11_v5_ksu_kprobes.sh"
echo
echo "See PROJECT_HANDOFF.md for full details."
