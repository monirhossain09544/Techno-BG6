import urllib.request
import re

headers = {'User-Agent': 'Mozilla/5.0'}
for u in [
    "https://www.gsmmafia.com/tecno-spark-30c-kl5-flash-file-stock-rom/",
    "https://tecnofirmware.com/tecno-spark-30c-kl5-firmware-flash-file/",
    "https://tecnofirmware.com/tecno-spark-30-kl6-firmware-flash-file/",
]:
    try:
        html = urllib.request.urlopen(urllib.request.Request(u, headers=headers), timeout=12).read().decode('utf-8', errors='ignore')
        print(f"=== {u} ===")
        for link in re.findall(r'href=["\']([^"\']*(?:drive\.google\.com|mediafire\.com|mega\.nz)[^"\']*)["\']', html, re.I):
            print(" ", link)
    except Exception as e:
        print(u, e)
