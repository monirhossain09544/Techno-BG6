import urllib.request
import re

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'}
page_url = "https://hios-launcher.en.uptodown.com/android/download/1226938938"
html = urllib.request.urlopen(urllib.request.Request(page_url, headers=headers), timeout=15).read().decode('utf-8', errors='ignore')
for m in re.finditer(r'<button[^>]*detail-download-button[^>]*>', html, re.S):
    print("BUTTON:", m.group(0))
for m in re.finditer(r'data-url="([^"]+)"', html):
    val = m.group(1)
    if not val.startswith("http"):
        print("NON-HTTP data-url:", val[:100])
