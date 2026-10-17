#!/usr/bin/env python3
import os, re, shutil

WORKDIR = os.path.expanduser("~/tecno_bg6_kernel")
KDIR = os.path.join(WORKDIR, "kernel_ums9230")
mod_path = os.path.join(KDIR, "kernel", "module.c")

if not os.path.exists(mod_path + ".orig"):
    shutil.copy2(mod_path, mod_path + ".orig")

with open(mod_path) as f:
    c = f.read()

applied = []

# 1. module_sig_check: after mod_verify_sig, always accept
if "TECNO-BG6: accept stock" not in c:
    sig_re = re.compile(r"(err\s*=\s*mod_verify_sig\s*\(\s*mod,\s*info\s*\)\s*;\s*\n\s*\})")
    m = sig_re.search(c)
    if not m:
        raise SystemExit("FAIL: module_sig_check anchor not found")
    c = sig_re.sub(m.group(1) + "\n\t/* TECNO-BG6: accept stock module signatures */\n\tinfo->sig_ok = true;\n\treturn 0;", c, count=1)
    applied.append("module_sig_check")

# 2. check_version bad_version: return 0 -> return 1
if "TECNO-BG6: allow CRC mismatch" not in c:
    bad_re = re.compile(r"(bad_version:\s*\n\s*pr_warn\(.*?\);\s*\n)(\s*)return\s+0\s*;", re.S)
    m = bad_re.search(c)
    if not m:
        raise SystemExit("FAIL: bad_version anchor not found")
    c = bad_re.sub(lambda mm: mm.group(1) + mm.group(2) + "/* TECNO-BG6: allow CRC mismatch */\n" + mm.group(2) + "return 1;", c, count=1)
    applied.append("check_version")

# 3. check_modinfo: drop -ENOEXEC on vermagic mismatch
if "TECNO-BG6: allow vermagic mismatch" not in c:
    ver_re = re.compile(r"(else\s+if\s*\(\s*!same_magic\s*\(.*?\)\s*\)\s*\{\s*\n\s*pr_err\(.*?\);\s*\n)(\s*)return\s+-ENOEXEC\s*;", re.S)
    m = ver_re.search(c)
    if not m:
        raise SystemExit("FAIL: same_magic/vermagic anchor not found")
    c = ver_re.sub(lambda mm: mm.group(1) + mm.group(2) + "/* TECNO-BG6: allow vermagic mismatch */", c, count=1)
    applied.append("check_modinfo")

with open(mod_path, "w") as f:
    f.write(c)
print("[OK] module.c patched:", ", ".join(applied))

# defconfig
src = os.path.join(WORKDIR, "backups", "bg6_stock_defconfig")
dst = os.path.join(KDIR, "arch", "arm64", "configs", "bg6_defconfig")
shutil.copy2(src, dst)
with open(dst) as f:
    cfg = f.read()
ov = [
    ("CONFIG_LOCALVERSION=", 'CONFIG_LOCALVERSION=""'),
    ("CONFIG_LOCALVERSION_AUTO=y", "# CONFIG_LOCALVERSION_AUTO is not set"),
    ("CONFIG_MODULE_SIG_FORCE=y", "# CONFIG_MODULE_SIG_FORCE is not set"),
    ("CONFIG_WERROR=y", "# CONFIG_WERROR is not set"),
]
for o, n in ov:
    cfg = cfg.replace(o, n)
with open(dst, "w") as f:
    f.write(cfg)
print("[OK] bg6_defconfig installed")
