# Building from scratch

## Prerequisites (Ubuntu 22.04 / 24.04)

```bash
sudo apt-get update
sudo apt-get install -y git make bc bison flex libssl-dev libelf-dev \
  libncurses-dev zstd cpio rsync unzip wget curl python3 xz-utils
```

## 1. Source

```bash
git clone kernel_repo.bundle kernel_ums9230      # bundle from Releases
cd kernel_ums9230
git checkout v5-ksu-kprobes-golden
```

Tags: `v2-golden-baseline`, `v3-perf-golden`, `v4-ksu-golden`,
`v5-ksu-kprobes-golden`.

## 2. Toolchain

```bash
mkdir -p ../toolchains && cd ../toolchains
curl -L -o clang-r416183b.tar.gz \
  "https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android12-release/clang-r416183b.tar.gz"
mkdir -p clang-r416183b && tar xzf clang-r416183b.tar.gz -C clang-r416183b
clang-r416183b/bin/clang --version    # expect 12.0.5 / r416183b
```

`magiskboot` (for repacking the boot image) can be extracted from a Magisk APK:

```bash
unzip -j Magisk-v27.0.apk 'lib/arm64-v8a/libmagiskboot.so' -d .
mv libmagiskboot.so magiskboot && chmod +x magiskboot
```

## 3. Configure

```bash
cd kernel_ums9230
export PATH="$PWD/../toolchains/clang-r416183b/bin:$PATH"

ARGS=(O=out ARCH=arm64 LLVM=1 LLVM_IAS=1 CC=clang \
  CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- \
  LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy \
  OBJDUMP=llvm-objdump STRIP=llvm-strip)

cp ../configs/bg6_golden_v3_defconfig out/.config
./scripts/config --file out/.config \
  --set-str LOCALVERSION "" \
  -e KSU -e KSU_DEBUG -e KPROBES -e KPROBE_EVENTS \
  -e LTO_CLANG -e SHADOW_CALL_STACK -e SHADOW_CALL_STACK_VMAP \
  -e MODVERSIONS -e MODULE_SIG -d MODULE_SIG_FORCE \
  -d OPLUS_FEATURE_PHOENIX -d IOSCHED_BFQ

make "${ARGS[@]}" olddefconfig
```

### Gates - verify before building

```bash
grep -E "CONFIG_KSU=|CONFIG_KSU_DEBUG=|CONFIG_KPROBES=|CONFIG_SHADOW_CALL_STACK=|CONFIG_LTO_CLANG=|CONFIG_CFI_CLANG=" out/.config
make -s "${ARGS[@]}" kernelrelease
# must print exactly: 5.4.210-android12-9-gf8b17864a03c-ab602
```

## 4. Build

```bash
export KBUILD_BUILD_USER="Monir"
export KBUILD_BUILD_HOST="tecno-bg6-v5-ksu"
make -j"$(nproc)" "${ARGS[@]}" Image
# LTO link ~10 min
ls -lh out/arch/arm64/boot/Image      # ~37 MB
```

### Post-build gates

```bash
grep scs_init           out/System.map     # must be present
grep ksu_handle_prctl   out/System.map     # KSU userspace bridge
grep -c kprobe          out/System.map     # ~141
grep -iE "phoenix|oplus" out/System.map    # must be empty
```

## 5. Repack into a boot image

The kernel must be dropped into the **stock** boot image so the ramdisk (and
its AVB footer) stays intact.

```bash
mkdir -p ../extracted/boot_v5 && cd ../extracted/boot_v5
cp ../../images/boot_a_stock.img ./boot.img
../../toolchains/magiskboot unpack -h boot.img
../../toolchains/magiskboot cpio ramdisk.cpio restore   # strip Magisk if present
cp ../../kernel_ums9230/out/arch/arm64/boot/Image ./kernel
../../toolchains/magiskboot repack boot.img ../../bg6_boot_a_v5_ksu_kprobes.img
```

Expected repack output: `HEADER_VER 4`, `KERNEL_FMT raw`, `RAMDISK_FMT lz4_legacy`.

Or just run the script:

```bash
bash ../scripts/phase11_v5_ksu_kprobes.sh
```
