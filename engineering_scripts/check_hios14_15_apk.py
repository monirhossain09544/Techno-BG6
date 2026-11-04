import urllib.request
import re

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'}
for url in [
    "https://hios-launcher.en.uptodown.com/android/versions",
    "https://hios-launcher.en.uptodown.com/android",
]:
    try:
        req = urllib.request.Request(url, headers=headers)
        html = urllib.request.urlopen(req, timeout=10).read().decode('utf-8', errors='ignore')
        print(f"=== {url} (len={len(html)}) ===")
        vers = re.findall(r'data-url="([^"]+)"[^>]*>.*?<span class="version">([^<]+)</span>', html, re.S)
        for u, v in vers[:10]:
            print(f"  {v} -> {u}")
        if not vers:
            for m in re.findall(r'(\d+\.\d+\.\d+[\.\d]*)', html)[:15]:
                print("  ver match:", m)
    except Exception as e:
        print(f"{url}: {e}")
