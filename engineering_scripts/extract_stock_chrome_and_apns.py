with open(r"C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root\system_apks.txt", "rb") as f:
    text = f.read().decode("utf-16le", errors="ignore")

for line in text.splitlines():
    if any(k in line.lower() for k in ["chrome", "webview", "trichrome", "browser", "apn"]):
        print(line)
