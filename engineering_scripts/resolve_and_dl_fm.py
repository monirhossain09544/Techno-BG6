import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
python3 - << 'PYEOF'
import urllib.request
import re
import subprocess

UA = "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36"

redirects = [
    "https://vertexaisearch.cloud.google.com/grounding-api-redirect/AUZIYQEKzMG_1Jcbe2RkbINtv6LGvvwRR9cYSpxRfgSGBj_KQ1Bu79AbOC2BHYNIVgMLp9Vp12tmKQLmyN_NGtzwviqXmHMZoCL9BeUOXkaT1meAttnAwVcu1TkOExLXc9WSOifU-KUFb0Yct78-9HA35xeE",
    "https://vertexaisearch.cloud.google.com/grounding-api-redirect/AUZIYQGXE4_ivfFB0vdDah8avra6Ie3zx5zM3wVb0ZyaO8JuQoptXnMqIqSeAb8WUWOcoRZX4q9vH1cATTNLu0k8ahxSGmaPpjKHOkpUgj7B564U9V50GOSVXMEpyR4C4dixRZUdfK3TKgpFT4BOUePBYdTMtoJ_WuYvAOvj",
    "https://vertexaisearch.cloud.google.com/grounding-api-redirect/AUZIYQEM4cICqK0YKRnZlp9phRbqN6XBG_b7uWGYpTK_pIEckliijDBxvxpv10DtZ0iEPYMHWP5F11lXgWZpn-XBtbOUx0BFv3Hpa653MZsFrfLkLwzwRi4xiRXQYZrpumSgYlZdK-S8dGv8JW4zEDDaRnJamGupCZnMWw==",
    "https://vertexaisearch.cloud.google.com/grounding-api-redirect/AUZIYQFaQYhbbrX2doAJ0JruA4YuD4XRPx0oTvCoEomvznCqCwSkGUMloF4txPCk-0N6_IzMzve6v2roSg5heUtsJThu_Hib0VWGK4om4drVe1mjxQCP_YD-Gq0Xd05PuSbDKGzEng6BpnWKncN6U0rDZzftSD97ZqoRgyqA1UvAh7CJshXqCOmvmPt6b64SDcHPEm0805nSg1ax",
]

uptodown_base = None
for r in redirects:
    try:
        req = urllib.request.Request(r, headers={"User-Agent": UA})
        with urllib.request.urlopen(req, timeout=20) as resp:
            final = resp.geturl()
            print("RESOLVED:", final)
            if "uptodown.com" in final and not uptodown_base:
                m = re.match(r"(https://[a-z0-9-]+\.en\.uptodown\.com/android)", final)
                if m:
                    uptodown_base = m.group(1)
    except Exception as e:
        print("RESOLVE ERR:", e)

if uptodown_base:
    print("UPTODOWN BASE:", uptodown_base)
    vurl = uptodown_base + "/versions"
    req = urllib.request.Request(vurl, headers={"User-Agent": UA})
    with urllib.request.urlopen(req, timeout=20) as resp:
        vhtml = resp.read().decode("utf-8", errors="ignore")
    items = re.findall(r'data-url="([^"]+)"[^>]*>.*?class="version">([^<]+)<', vhtml, re.S)
    if not items:
        links = re.findall(r'https://[a-z0-9.-]+\.uptodown\.com/android/download/\d+', vhtml)
        vnames = re.findall(r'class="version">([^<]+)<', vhtml)
        print("Links:", links[:10])
        print("Vnames:", vnames[:10])
        dl_page = links[0] if links else uptodown_base + "/download"
    else:
        print("Items:", items[:10])
        dl_page = items[0][0] if items[0][0].startswith("http") else uptodown_base + "/download"

    print("Fetching dl_page:", dl_page)
    req2 = urllib.request.Request(dl_page, headers={"User-Agent": UA, "Referer": vurl})
    with urllib.request.urlopen(req2, timeout=20) as resp2:
        dhtml = resp2.read().decode("utf-8", errors="ignore")
    m = re.search(r'id="detail-download-button"[^>]*data-url="([^"]+)"', dhtml)
    if not m:
        m = re.search(r'button[^>]*id="detail-download-button"[^>]*data-url="([^"]+)"', dhtml)
    if not m:
        # print all data-url attributes
        durls = re.findall(r'data-url="([^"]+)"', dhtml)
        print("All data-urls:", [d[:60] for d in durls[:10]])
        for d in durls:
            if not d.startswith("http") and len(d) > 30:
                m = type("M", (), {"group": lambda self, _: d})()
                break
    if m:
        token = m.group(1)
        dl_url = f"https://dw.uptodown.com/dwn/{token}"
        print("Downloading APK via token len:", len(token))
        subprocess.run([
            "curl", "-L", "-A", UA, "-e", dl_page,
            "-o", "/nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk",
            dl_url
        ], check=True)
PYEOF

ls -lh /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk 2>/dev/null || true
file /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk 2>/dev/null || true
if [ -f /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk ]; then
    /nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2 dump badging /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk | head -n 30 || true
    APKSIGNER=$(find /nvme0n1-disk/shunno_os/prebuilts -name apksigner.jar | head -n 1)
    java -jar "$APKSIGNER" verify --print-certs /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk || true
fi
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=90)
print("STDOUT:\n", stdout.read().decode("utf-8", errors="replace"))
print("STDERR:\n", stderr.read().decode("utf-8", errors="replace"))
ssh.close()
