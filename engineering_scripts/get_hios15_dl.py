import urllib.request
import re

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'}
url = "https://hios-launcher.en.uptodown.com/android/versions"
html = urllib.request.urlopen(urllib.request.Request(url, headers=headers), timeout=10).read().decode('utf-8', errors='ignore')

for m in re.finditer(r'data-url="([^"]+)"[^>]*>.*?<span class="version">([^<]+)</span>.*?<span class="date">([^<]+)</span>', html, re.S):
    print(m.group(2), m.group(3), m.group(1))

# Also check the main download page
dl_page = "https://hios-launcher.en.uptodown.com/android/download"
html2 = urllib.request.urlopen(urllib.request.Request(dl_page, headers=headers), timeout=10).read().decode('utf-8', errors='ignore')
for m in re.findall(r'data-url="([^"]+)"', html2):
    if len(m) > 20 and not m.startswith("http"):
        print("token:", m[:80])
