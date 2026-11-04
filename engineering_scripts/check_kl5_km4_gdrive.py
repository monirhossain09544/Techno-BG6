import urllib.request
import re

headers = {'User-Agent': 'Mozilla/5.0'}
urls = [
    "https://gsmmafia.com/tecno-spark-30c-kl5-flash-file/",
    "https://tecnofirmware.com/tecno-spark-30c-kl5/",
    "https://tecnofirmware.com/tecno-spark-30c-kl5s/",
    "https://tecnofirmware.com/tecno-spark-30-kl6/",
    "https://tecnofirmware.com/tecno-spark-go-2-km4/",
]

for u in urls:
    try:
        html = urllib.request.urlopen(urllib.request.Request(u, headers=headers), timeout=12).read().decode('utf-8', errors='ignore')
        print(f"=== {u} ===")
        for link in re.findall(r'href=["\']([^"\']*(?:drive\.google\.com|mediafire\.com|mega\.nz)[^"\']*)["\']', html, re.I):
            print("  LINK:", link)
            m = re.search(r'/d/([^/]+)', link)
            if m:
                fid = m.group(1)
                ghtml = urllib.request.urlopen(urllib.request.Request(f"https://drive.google.com/file/d/{fid}/view", headers=headers), timeout=10).read().decode('utf-8', errors='ignore')
                t = re.search(r'<title>([^<]+)</title>', ghtml)
                print("    TITLE:", t.group(1) if t else "Unknown")
    except Exception as e:
        print(u, e)
