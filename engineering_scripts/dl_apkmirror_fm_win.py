import urllib.request
import http.cookiejar
import re
import os

SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36"

cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))
opener.addheaders = [("User-Agent", UA)]

# Check APKMirror Transsion File Manager releases from residential IP!
base = "https://www.apkmirror.com"
rel_list = "https://www.apkmirror.com/apk/transsion-holdings/file-manager-29/"
html = opener.open(rel_list, timeout=20).read().decode("utf-8", errors="ignore")
print("APKMirror list len:", len(html))

rel_links = []
for m in re.finditer(r'href="(/apk/transsion-holdings/file-manager-29/file-manager-[^"]+-release/)"', html):
    u = m.group(1)
    if u not in rel_links:
        rel_links.append(u)
print("Releases found:", rel_links[:10])

def download_apkmirror_release(rel_path, out_name):
    rurl = base + rel_path
    rhtml = opener.open(rurl, timeout=20).read().decode("utf-8", errors="ignore")
    # Find variant link (-android-apk-download/)
    vlinks = re.findall(r'href="(/apk/transsion-holdings/file-manager-29/[^"]+-android-apk-download/)"', rhtml)
    print("Variants for", rel_path, ":", vlinks)
    if not vlinks:
        return False
    vurl = base + vlinks[0]
    vhtml = opener.open(urllib.request.Request(vurl, headers={"User-Agent": UA, "Referer": rurl}), timeout=20).read().decode("utf-8", errors="ignore")
    # Find downloadButton link (?key=...)
    m = re.search(r'href="([^"]*download/?\?key=[^"]+)"', vhtml)
    if not m:
        print("No ?key= on variant page")
        return False
    dpage = base + m.group(1).replace("&amp;", "&")
    dhtml = opener.open(urllib.request.Request(dpage, headers={"User-Agent": UA, "Referer": vurl}), timeout=20).read().decode("utf-8", errors="ignore")
    m2 = re.search(r'href="([^"]*wp-content/themes/APKMirror/download\.php\?id=[^"]+)"', dhtml)
    if not m2:
        print("No download.php?id= on download page")
        return False
    final_dl = (base + m2.group(1) if m2.group(1).startswith("/") else m2.group(1)).replace("&amp;", "&")
    out_path = os.path.join(SCRATCH, out_name)
    print("Downloading:", final_dl, "->", out_path)
    with opener.open(urllib.request.Request(final_dl, headers={"User-Agent": UA, "Referer": dpage}), timeout=90) as resp, open(out_path, "wb") as f:
        while True:
            chunk = resp.read(1024 * 1024)
            if not chunk:
                break
            f.write(chunk)
    print("DONE! Size:", os.path.getsize(out_path))
    return True

# Download both 17.0.0.104 (or top HiOS 14 release) AND 3.3.20.x so we see which exact UI matches BG6 HiOS 14!
for rl in rel_links[:3]:
    slug = rl.strip("/").split("/")[-1]
    download_apkmirror_release(rl, f"{slug}.apk")
