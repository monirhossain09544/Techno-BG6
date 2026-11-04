import re, subprocess

with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\stock_apns-conf.xml', encoding='utf-8', errors='ignore') as f:
    text = f.read()

print("=== Stock TECNO 470 APNs ===")
for m in re.findall(r'<apn[^>]*mcc="470"[^>]*/>', text, re.DOTALL):
    print(m)

print("\n=== Checking phone connectivity & Rider logs ===")
res = subprocess.run(
    ['adb', '-s', '1099738415003670', 'shell',
     'dumpsys connectivity | grep -A 25 "Current Networks:"; ip addr show seth_lte0; ip addr show seth_lte1; ip -6 route show table all; logcat -d -t 500 | grep -i -E "foodpanda|rider|okhttp|cronet|NetworkMonitor|Validation|Dns|seth_lte" | tail -n 50'],
    capture_output=True, text=True, errors='replace'
)
print(res.stdout)
