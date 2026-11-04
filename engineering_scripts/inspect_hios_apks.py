import os
import zipfile

suite_dir = r"D:\HiOS_UI_Suite"
for root, dirs, files in os.walk(suite_dir):
    for f in files:
        if f.endswith(".apk"):
            p = os.path.join(root, f)
            rel = os.path.relpath(p, suite_dir)
            try:
                with zipfile.ZipFile(p, 'r') as z:
                    names = z.namelist()
                    dexes = [n for n in names if n.endswith(".dex")]
                    libs = [n for n in names if n.endswith(".so")]
                    print(f"{rel} ({os.path.getsize(p):,} bytes): dex={dexes}, libs={len(libs)}")
            except Exception as e:
                print(f"{rel}: ERROR {e}")
