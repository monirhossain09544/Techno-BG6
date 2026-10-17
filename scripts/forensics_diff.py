#!/usr/bin/env python3
import os, re

workdir = os.path.expanduser("~/tecno_bg6_kernel")
stock_cfg_path = os.path.join(workdir, "backups", "bg6_stock_defconfig")
out_cfg_path = os.path.join(workdir, "kernel_ums9230", "out", ".config")
kallsyms_path = os.path.join(workdir, "forensics", "stock_kallsyms.txt")
sysmap_path = os.path.join(workdir, "kernel_ums9230", "out", "System.map")

print("=" * 60)
print("PART 2: CONFIG DIFF (stock bg6_stock_defconfig vs out/.config)")
print("=" * 60)

def parse_cfg(path):
    d = {}
    for line in open(path, encoding="utf-8", errors="ignore"):
        line = line.strip()
        if line.startswith("CONFIG_") and "=" in line:
            k, v = line.split("=", 1)
            d[k] = v
    return d

stock = parse_cfg(stock_cfg_path)
built = parse_cfg(out_cfg_path)
dropped_y = sorted([k for k, v in stock.items() if v == "y" and built.get(k) != "y"])
added_y   = sorted([k for k, v in built.items() if v == "y" and stock.get(k) != "y"])

print("DROPPED CONFIG_*=y (stock had y, build doesn't):", len(dropped_y))
for k in dropped_y:
    print("   DROPPED:", k, "(stock=%s -> now=%s)" % (stock[k], built.get(k, "MISSING")))
print()
print("ADDED CONFIG_*=y (build has y, stock doesn't):", len(added_y))
for k in added_y[:60]:
    print("   ADDED:", k, "(now=%s)" % built[k])

print()
print("=" * 60)
print("PART 3: KALLSYMS DIFF (running stock kernel vs out/System.map)")
print("=" * 60)

def clean_sym(name):
    return re.sub(r"\.(cfi_jt|llvm\.\d+)$", "", name)

stock_text = set()
for line in open(kallsyms_path, encoding="utf-8", errors="ignore"):
    if "[" in line:
        continue
    parts = line.split()
    if len(parts) >= 3 and parts[1] in ("T", "t"):
        stock_text.add(clean_sym(parts[2]))

built_text = set()
for line in open(sysmap_path, encoding="utf-8", errors="ignore"):
    parts = line.split()
    if len(parts) >= 3 and parts[1] in ("T", "t"):
        built_text.add(clean_sym(parts[2]))

missing = sorted(stock_text - built_text)
extra   = sorted(built_text - stock_text)
missing_init = [s for s in missing if s.endswith("_init") or "sprd" in s or "ums9230" in s]
extra_init   = [s for s in extra if s.endswith("_init") or "oplus" in s or "realme" in s or "rmx" in s]

print("stock built-in funcs:", len(stock_text))
print("built (Realme) funcs:", len(built_text))
print("MISSING in compiled Image:", len(missing), " (init/sprd:", len(missing_init), ")")
print("EXTRA in compiled Image:", len(extra), " (init/oplus/realme:", len(extra_init), ")")
print()
print("--- Missing *_init / sprd_* / ums9230 funcs (first 80) ---")
for s in missing_init[:80]:
    print("   -", s)
print()
print("--- Extra *_init / oplus / realme funcs (first 40) ---")
for s in extra_init[:40]:
    print("   +", s)
