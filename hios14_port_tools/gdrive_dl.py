import urllib.request
import http.cookiejar
import re
import sys

fid = sys.argv[1]
out_path = sys.argv[2]

cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))
opener.addheaders = [('User-Agent', 'Mozilla/5.0 (X11; Linux x86_64) Chrome/124.0.0.0 Safari/537.36')]

url1 = f"https://drive.usercontent.google.com/download?id={fid}&export=download"
resp = opener.open(url1, timeout=30)
ctype = resp.headers.get('Content-Type', '')

if 'text/html' in ctype:
    html = resp.read().decode('utf-8', errors='ignore')
    uuid_m = re.search(r'name="uuid" value="([^"]+)"', html)
    confirm_m = re.search(r'name="confirm" value="([^"]+)"', html)
    uuid = uuid_m.group(1) if uuid_m else ''
    confirm = confirm_m.group(1) if confirm_m else 't'
    url2 = f"https://drive.usercontent.google.com/download?id={fid}&export=download&confirm={confirm}&uuid={uuid}"
    print(f"Downloading from {url2} ...")
    resp = opener.open(url2, timeout=60)

total = int(resp.headers.get('Content-Length', 0))
print(f"Content-Length: {total:,} bytes ({total/1024/1024:.1f} MB)")
downloaded = 0
with open(out_path, 'wb') as f:
    while True:
        chunk = resp.read(4 * 1024 * 1024)
        if not chunk:
            break
        f.write(chunk)
        downloaded += len(chunk)
        if downloaded % (64 * 1024 * 1024) < 4 * 1024 * 1024:
            print(f"  {out_path}: {downloaded/1024/1024:.1f} / {total/1024/1024:.1f} MB", flush=True)
print(f"DONE: {out_path} ({downloaded:,} bytes)", flush=True)
