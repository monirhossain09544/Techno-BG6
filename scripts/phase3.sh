
#!/bin/bash
set -uo pipefail
WORKDIR="$HOME/tecno_bg6_kernel"
mkdir -p "$WORKDIR/toolchains"
cd "$WORKDIR"

echo "[1/3] cloning kernel source ..."
if [ ! -d "$WORKDIR/kernel_ums9230/.git" ]; then
  git clone --depth=1 https://github.com/realme-kernel-opensource/realme_C51_C53_Narzo-N53-AndroidT-kernel-source.git "$WORKDIR/kernel_ums9230" 2>&1
else
  echo "kernel_ums9230 already cloned"
fi

echo "[2/3] downloading clang r416183b ..."
cd "$WORKDIR/toolchains"
if [ ! -f clang-r416183b/bin/clang ]; then
  mkdir -p clang-r416183b
  wget -q https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/master-kernel-build-2021/clang-r416183b.tar.gz -O clang-r416183b.tar.gz 2>&1
  tar -xzf clang-r416183b.tar.gz -C clang-r416183b 2>&1
else
  echo "clang already present"
fi

echo "[3/3] downloading gcc 4.9 binutils ..."
if [ ! -d aarch64-linux-android-4.9/.git ]; then
  git clone --depth=1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 2>&1
else
  echo "gcc4.9 already cloned"
fi

echo "PHASE3_DONE"
