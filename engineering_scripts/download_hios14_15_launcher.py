import urllib.request
import re
import os

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'}

for ver, vid in [("15.0.3.043", "1226938938"), ("14.5.3.214", "1095630852")]:
    page_url = f"https://hios-launcher.en.uptodown.com/android/download/{vid}"
    html = urllib.request.urlopen(urllib.request.Request(page_url, headers=headers), timeout=15).read().decode('utf-8', errors='ignore')
    m = re.search(r'id="detail-download-button"[^>]*data-url="([^"]+)"', html)
    if not m:
        m = re.search(r'data-url="([^"]{40,})"', html)
    print(ver, "token:", m.group(1) if m else "NOT FOUND")
    if m:
        dl_url = f"https://dw.uptodown.com/dwn/{m.group(1)}"
        out_path = rf"D:\HiOS_UI_Suite\HiLauncher_{ver}.apk"
        req = urllib.request.Request(dl_url, headers={'User-Agent': headers['User-Agent'], 'Referer': page_url})
        with urllib.request.urlopen(req, timeout=60) as resp, open(out_path, "wb") as wf:
            data = resp.read()
            wf.write(data)
        print(f"  Downloaded {out_path} ({len(data):,} bytes, magic={data[:4]})")
