#!/usr/bin/env python3
"""
Deterministic Patcher for TECNO-BG6 (5.4.210-android12-9-gf8b17864a03c-ab602)
Patches:
  1. Makefile (VERSION=5, PATCHLEVEL=4, SUBLEVEL=210, EXTRAVERSION=-android12-9-gf8b17864a03c-ab602)
  2. scripts/setlocalversion (suppresses -dirty / git sha suffix so UTS_RELEASE is exact)
  3. kernel/module.c (relaxes module_sig_check, check_version, and check_modinfo for stock .ko modules)
  4. arch/arm64/configs/bg6_defconfig (relaxes MODULE_SIG_FORCE & LOCALVERSION_AUTO while keeping ABI intact)
"""
import os
import re
import shutil
import sys

WORKDIR = os.path.expanduser("~/tecno_bg6_kernel")
KDIR = os.path.join(WORKDIR, "kernel_ums9230")
STOCK_DEFCONFIG = os.path.join(WORKDIR, "backups", "bg6_stock_defconfig")
TARGET_REL = "5.4.210-android12-9-gf8b17864a03c-ab602"
TARGET_EXTRA = "-android12-9-gf8b17864a03c-ab602"


def backup_file(path: str) -> None:
    bak = path + ".orig"
    if not os.path.exists(bak):
        shutil.copy2(path, bak)


def patch_makefile() -> None:
    makefile_path = os.path.join(KDIR, "Makefile")
    backup_file(makefile_path)
    with open(makefile_path, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()

    content = re.sub(r"^VERSION\s*=.*$", "VERSION = 5", content, count=1, flags=re.M)
    content = re.sub(r"^PATCHLEVEL\s*=.*$", "PATCHLEVEL = 4", content, count=1, flags=re.M)
    content = re.sub(r"^SUBLEVEL\s*=.*$", "SUBLEVEL = 210", content, count=1, flags=re.M)
    content = re.sub(
        r"^EXTRAVERSION\s*=.*$",
        f"EXTRAVERSION = {TARGET_EXTRA}",
        content,
        count=1,
        flags=re.M,
    )

    # Also ignore warnings-as-errors if cross-compiling older Unisoc drivers with Clang
    if "-Wno-error" not in content:
        content = content.replace(
            "KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes",
            "KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-error",
        )

    with open(makefile_path, "w", encoding="utf-8") as f:
        f.write(content)
    print("[OK] Patched Makefile -> 5.4.210" + TARGET_EXTRA)


def patch_setlocalversion() -> None:
    slv_path = os.path.join(KDIR, "scripts", "setlocalversion")
    backup_file(slv_path)
    with open(slv_path, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()

    # Force setlocalversion to output empty string so EXTRAVERSION alone controls uname -r
    marker = "# TECNO-BG6 exact release lock\nexit 0\n"
    if "TECNO-BG6 exact release lock" not in content:
        lines = content.splitlines(keepends=True)
        lines.insert(1, marker)
        content = "".join(lines)

    with open(slv_path, "w", encoding="utf-8") as f:
        f.write(content)
    os.chmod(slv_path, 0o755)
    print("[OK] Patched scripts/setlocalversion -> locked to exact EXTRAVERSION")


def patch_module_c() -> None:
    mod_path = os.path.join(KDIR, "kernel", "module.c")
    backup_file(mod_path)
    with open(mod_path, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()

    # 1. Bypass module_sig_check key mismatch AFTER mod_verify_sig truncates signature bytes
    sig_pattern = re.compile(
        r"(static\s+int\s+module_sig_check\s*\(\s*struct\s+load_info\s*\*info,\s*int\s+flags\s*\)\s*\{.*?"
        r"err\s*=\s*mod_verify_sig\s*\(\s*mod,\s*info\s*\)\s*;\s*\})",
        re.S,
    )
    if "/* TECNO-BG6: accept stock module signatures */" not in content:
        match = sig_pattern.search(content)
        if not match:
            print("ERROR: Could not locate module_sig_check in kernel/module.c", file=sys.stderr)
            sys.exit(1)
        replacement = (
            match.group(1)
            + "\n\t/* TECNO-BG6: accept stock module signatures */\n"
            + "\tinfo->sig_ok = true;\n"
            + "\treturn 0;\n"
        )
        content = content[: match.start()] + replacement + content[match.end() :]

    # 2. Bypass check_version (CONFIG_MODVERSIONS symbol CRC mismatch)
    bad_ver_pattern = re.compile(
        r"(bad_version:\s*\n\s*pr_warn\([^\n]+\);\s*\n)\s*return\s+0\s*;",
        re.S,
    )
    if "/* TECNO-BG6: allow CRC mismatch */" not in content:
        match = bad_ver_pattern.search(content)
        if not match:
            print("ERROR: Could not locate bad_version in kernel/module.c", file=sys.stderr)
            sys.exit(1)
        content = (
            content[: match.start()]
            + match.group(1)
            + "\t/* TECNO-BG6: allow CRC mismatch */\n\treturn 1;"
            + content[match.end() :]
        )

    # 3. Bypass check_modinfo vermagic mismatch
    vermagic_pattern = re.compile(
        r"(else\s+if\s*\(\s*!same_magic\s*\(\s*modmagic,\s*vermagic,\s*info->index\.vers\s*\)\s*\)\s*\{\s*\n"
        r"\s*pr_err\([^\n]+\);\s*\n)\s*return\s+-ENOEXEC\s*;",
        re.S,
    )
    if "/* TECNO-BG6: allow vermagic mismatch */" not in content:
        match = vermagic_pattern.search(content)
        if not match:
            print("ERROR: Could not locate same_magic check in kernel/module.c", file=sys.stderr)
            sys.exit(1)
        content = (
            content[: match.start()]
            + match.group(1)
            + "\t\t/* TECNO-BG6: allow vermagic mismatch */\n"
            + content[match.end() :]
        )

    with open(mod_path, "w", encoding="utf-8") as f:
        f.write(content)
    print("[OK] Patched kernel/module.c -> module_sig_check, check_version, check_modinfo relaxed")


def prepare_defconfig() -> None:
    dst_defconfig = os.path.join(KDIR, "arch", "arm64", "configs", "bg6_defconfig")
    shutil.copy2(STOCK_DEFCONFIG, dst_defconfig)
    with open(dst_defconfig, "r", encoding="utf-8", errors="ignore") as f:
        cfg = f.read()

    # Keep CONFIG_MODVERSIONS=y and CONFIG_MODULE_SIG=y so struct module ABI never shifts!
    # Only disable force-rejection and auto-localversion:
    overrides = [
        ("CONFIG_LOCALVERSION=", 'CONFIG_LOCALVERSION=""'),
        ("CONFIG_LOCALVERSION_AUTO=y", "# CONFIG_LOCALVERSION_AUTO is not set"),
        ("CONFIG_MODULE_SIG_FORCE=y", "# CONFIG_MODULE_SIG_FORCE is not set"),
        ("CONFIG_WERROR=y", "# CONFIG_WERROR is not set"),
        ("CONFIG_PPC_WERROR=y", "# CONFIG_PPC_WERROR is not set"),
    ]
    for old, new in overrides:
        cfg = cfg.replace(old, new)

    cfg += "\n# TECNO-BG6 Safety Overrides\n"
    cfg += 'CONFIG_LOCALVERSION=""\n'
    cfg += "# CONFIG_LOCALVERSION_AUTO is not set\n"
    cfg += "# CONFIG_MODULE_SIG_FORCE is not set\n"
    cfg += "# CONFIG_WERROR is not set\n"

    with open(dst_defconfig, "w", encoding="utf-8") as f:
        f.write(cfg)
    print(f"[OK] Installed patched defconfig -> {dst_defconfig}")


if __name__ == "__main__":
    patch_makefile()
    patch_setlocalversion()
    patch_module_c()
    prepare_defconfig()
    print("\nAll TECNO-BG6 patches applied successfully!")
