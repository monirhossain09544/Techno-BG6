import urllib.request
import re

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'}
urls = [
    "https://www.hovatek.com/forum/thread-47198.html",
    "https://gsmmafia.com/tecno-spark-go-1-kl4-flash-file/",
    "https://firmwaredrive.com/index.php?a=downloads&b=folder&id=35069",
    "https://tecnofirmware.com/tecno-spark-go-1-kl4",
]

for u in urls:
    try:
        req = urllib.request.Request(u, headers=headers)
        html = urllib.request.urlopen(req, timeout=12).read().decode('utf-8', errors='ignore')
        print(f"=== {u} (len={len(html)}) ===")
        for link in re.findall(r'href=["\']([^"\']*(?:mega\.nz|mediafire\.com|drive\.google\.com|onedrive|pixeldrain|workers\.dev|KL4)[^"\']*)["\']', html, re.I):
            print("  LINK:", link)
    except Exception as e:
        print(f"=== {u}: {e} ===")
