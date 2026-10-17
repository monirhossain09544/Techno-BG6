#!/usr/bin/env python3
import shutil, os
W = os.path.expanduser("~/tecno_bg6_kernel")
src = os.path.join(W, "backups", "bg6_stock_defconfig")
dst = os.path.join(W, "kernel_ums9230", "arch", "arm64", "configs", "bg6_defconfig")
shutil.copy2(src, dst)
with open(dst) as f:
    cfg = f.read()
ov = [
    ("CONFIG_LOCALVERSION_AUTO=y", "# CONFIG_LOCALVERSION_AUTO is not set"),
    ("CONFIG_MODULE_SIG_FORCE=y", "# CONFIG_MODULE_SIG_FORCE is not set"),
    ("CONFIG_WERROR=y", "# CONFIG_WERROR is not set"),
]
for o, n in ov:
    cfg = cfg.replace(o, n)
with open(dst, "w") as f:
    f.write(cfg)
print("defconfig fixed (LOCALVERSION untouched)")
