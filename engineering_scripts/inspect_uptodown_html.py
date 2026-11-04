import urllib.request
import re

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'}
url = "https://hios-launcher.en.uptodown.com/android/versions"
html = urllib.request.urlopen(urllib.request.Request(url, headers=headers), timeout=10).read().decode('utf-8', errors='ignore')

for target in ["14.5.3.214", "15.0.3.043", "15.4.3.047", "15.5.3.038"]:
    idx = html.find(target)
    if idx != -1:
        print(f"=== {target} ===")
        print(html[max(0, idx-300):idx+300])
