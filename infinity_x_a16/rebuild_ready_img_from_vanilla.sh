#!/usr/bin/env bash
# Rebuilds infinity_x_bg6_ready.img byte-for-byte from vanilla infinity_x_3.12_gapps.img
# Usage: sudo bash rebuild_ready_img_from_vanilla.sh /path/to/infinity_x_3.12_gapps.img /path/to/release_assets_extracted /path/to/output_ready.img
set -euo pipefail

BASE_IMG="${1:?Usage: $0 <vanilla_gapps.img> <extracted_release_assets_dir> <output_ready.img>}"
REL_ASSETS="${2:?Missing extracted release_assets_payload.tar.xz directory}"
OUT_IMG="${3:?Missing output image path}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "[1/5] Copying base image to $OUT_IMG ..."
cp --reflink=auto "$BASE_IMG" "$OUT_IMG"
avbtool_py="$SCRIPT_DIR/signing_keys_and_avb/avbtool.py"
avb_key="$SCRIPT_DIR/signing_keys_and_avb/testkey_rsa2048.pem"

python3 "$avbtool_py" erase_footer --image "$OUT_IMG" || true
e2fsck -fy "$OUT_IMG" || true
resize2fs "$OUT_IMG" 3368960K

MNT="/tmp/mnt_bg6_rebuild_$$"
mkdir -p "$MNT"
trap 'umount "$MNT" 2>/dev/null || true; rmdir "$MNT" 2>/dev/null || true' EXIT
mount -o loop,rw "$OUT_IMG" "$MNT"

echo "[2/5] Applying IMAGE_DELTA_MANIFEST.tsv (deletions, dirs, files, modes, SELinux labels) ..."
python3 - "$SCRIPT_DIR" "$REL_ASSETS" "$MNT" << 'PYEOF'
import os, sys, shutil

script_dir, rel_assets, mnt = sys.argv[1], sys.argv[2], sys.argv[3]
manifest = os.path.join(script_dir, "IMAGE_DELTA_MANIFEST.tsv")
small_dir = os.path.join(script_dir, "system_image_delta_small")
large_dir = os.path.join(rel_assets, "system_image_delta_large")

with open(manifest, "r", encoding="utf-8") as f:
    for line in f:
        line = line.rstrip("\n")
        if not line or line.startswith("#"):
            continue
        parts = line.split("\t")
        op, rel = parts[0], parts[1]
        target = os.path.join(mnt, rel)
        if op == "DELETED":
            if os.path.islink(target) or os.path.isfile(target):
                os.unlink(target)
            elif os.path.isdir(target):
                shutil.rmtree(target)
        elif op == "ADDED_DIR":
            mode, se = int(parts[2], 8), parts[3]
            os.makedirs(target, exist_ok=True)
            os.chmod(target, mode)
            if se:
                os.setxattr(target, b"security.selinux", se.encode() + b"\x00", follow_symlinks=False)
        elif op in ("ADDED_LINK", "MOD_LINK"):
            lnk_to = parts[3]
            se = parts[4] if len(parts) > 4 else ""
            if os.path.lexists(target):
                os.unlink(target)
            os.makedirs(os.path.dirname(target), exist_ok=True)
            os.symlink(lnk_to, target)
            if se:
                os.setxattr(target, b"security.selinux", se.encode() + b"\x00", follow_symlinks=False)
        elif op in ("ADDED_FILE", "MOD_FILE"):
            mode, se = int(parts[3], 8), parts[4]
            src = os.path.join(small_dir, rel)
            if not os.path.exists(src):
                src = os.path.join(large_dir, rel)
            if not os.path.exists(src):
                # Fallback to top-level APKs in rel_assets
                bn = os.path.basename(rel)
                alt = os.path.join(rel_assets, bn)
                if os.path.exists(alt):
                    src = alt
            if not os.path.exists(src):
                raise FileNotFoundError(f"Missing payload file for {rel}")
            os.makedirs(os.path.dirname(target), exist_ok=True)
            shutil.copyfile(src, target)
            os.chmod(target, mode)
            if se:
                os.setxattr(target, b"security.selinux", se.encode() + b"\x00", follow_symlinks=False)
PYEOF

echo "[3/5] Syncing & unmounting ext4 filesystem ..."
sync
umount "$MNT"
e2fsck -fy "$OUT_IMG" || true

echo "[4/5] Adding AVB SHA256_RSA2048 dm-verity hashtree footer (partition_size=3423481856) ..."
python3 "$avbtool_py" add_hashtree_footer \
    --image "$OUT_IMG" \
    --partition_name system \
    --partition_size 3423481856 \
    --key "$avb_key" \
    --algorithm SHA256_RSA2048

echo "[5/5] Verifying AVB image info ..."
python3 "$avbtool_py" info_image --image "$OUT_IMG" | head -n 25
echo "SUCCESS! $OUT_IMG is ready to flash to system_a."
