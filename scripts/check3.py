#!/usr/bin/env python3
import glob, os, subprocess

workdir = os.path.expanduser("~/tecno_bg6_kernel")
sysmap_path = os.path.join(workdir, "kernel_ums9230", "out", "System.map")
nm_bin = os.path.join(workdir, "toolchains", "clang-r416183b", "bin", "llvm-nm")

with open(sysmap_path, "r", encoding="utf-8", errors="ignore") as f:
    kernel_syms = {line.split()[2] for line in f if len(line.split()) >= 3}
print("kernel exported symbols in System.map:", len(kernel_syms))

ko_files = glob.glob("/tmp/bg6_vendor_ramdisk/**/*.ko", recursive=True)
print("found .ko modules:", len(ko_files))

mod_defined_syms = set()
for ko in ko_files:
    try:
        out = subprocess.check_output([nm_bin, "--defined-only", ko], text=True, errors="ignore")
    except Exception as e:
        continue
    for line in out.splitlines():
        parts = line.split()
        if len(parts) >= 3:
            mod_defined_syms.add(parts[-1])
print("symbols defined by modules:", len(mod_defined_syms))

all_available = kernel_syms | mod_defined_syms
missing_report = {}
total_undef = 0
for ko in sorted(ko_files):
    try:
        out = subprocess.check_output([nm_bin, "-u", ko], text=True, errors="ignore")
    except Exception:
        continue
    undefs = [line.split()[-1] for line in out.splitlines() if line.strip()]
    total_undef += len(undefs)
    missing = [s for s in undefs if s not in all_available]
    if missing:
        missing_report[os.path.basename(ko)] = missing

print("total undefined refs across modules:", total_undef)
if not missing_report:
    print("[PASS] 100% of undefined symbols exist in new kernel or other modules")
else:
    print("[WARNING] %d modules reference symbols missing from System.map:" % len(missing_report))
    all_missing = set()
    for mod, syms in sorted(missing_report.items()):
        all_missing.update(syms)
        print("  - %s: %d missing, first: %s" % (mod, len(syms), syms[:8]))
    print("--- distinct missing symbols (%d) ---" % len(all_missing))
    for s in sorted(all_missing):
        print("  " + s)
