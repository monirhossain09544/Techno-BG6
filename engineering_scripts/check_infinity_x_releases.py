import urllib.request
import json

url = "https://api.github.com/repos/Doze-off/ProjectInfinity-X_gsi/releases?per_page=30"
req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0"})
with urllib.request.urlopen(req, timeout=10) as resp:
    releases = json.loads(resp.read().decode())
    for i, r in enumerate(releases):
        print(f"[{i}] {r.get('tag_name')} | {r.get('name')} | {r.get('published_at')}")
        if i < 3:
            print("  Body:", r.get("body", "").strip()[:600])
            print("  ---")
