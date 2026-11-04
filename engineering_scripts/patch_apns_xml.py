import re

apn_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\stock_apns-conf.xml"
with open(apn_path, "r", encoding="utf-8") as f:
    txt = f.read()

# Ensure Teletalk 470-04 has an explicit "internet" default APN with protocol="IP" right at the start of mcc="470"
teletalk_internet_entry = '''  <apn carrier="Teletalk Internet" mcc="470" mnc="04" apn="internet" type="default,supl,dun" protocol="IP" roaming_protocol="IP" />
  <apn carrier="Banglalink Web" mcc="470" mnc="03" apn="blweb" type="default,supl,dun" protocol="IP" roaming_protocol="IP" />
  <apn carrier="Robi Internet" mcc="470" mnc="02" apn="internet" type="default,supl,dun" protocol="IP" roaming_protocol="IP" />
  <apn carrier="GP Internet" mcc="470" mnc="01" apn="gpinternet" type="default,supl,dun" protocol="IP" roaming_protocol="IP" />
'''

# Force protocol="IP" roaming_protocol="IP" on all mcc="470" lines so Unisoc IPv6 RA bug never affects any BD SIM
def fix_bd_apn(match):
    line = match.group(0)
    line = re.sub(r'protocol="IPV4V6"|protocol="IPV6"', 'protocol="IP"', line)
    line = re.sub(r'roaming_protocol="IPV4V6"|roaming_protocol="IPV6"', 'roaming_protocol="IP"', line)
    if 'protocol=' not in line:
        line = line.replace('/>', ' protocol="IP" roaming_protocol="IP" />')
    if 'mcc="470" mnc="04"' in line and 'apn="wap"' in line:
        line = line.replace('apn="wap"', 'apn="internet"')
    return line

txt_fixed = re.sub(r'<apn[^>]*mcc="470"[^>]*/>', fix_bd_apn, txt)
if 'carrier="Teletalk Internet"' not in txt_fixed:
    txt_fixed = txt_fixed.replace('<apns version="8">', '<apns version="8">\n' + teletalk_internet_entry, 1)

with open(apn_path, "w", encoding="utf-8") as f:
    f.write(txt_fixed)

print("Updated stock_apns-conf.xml with IPv4 BD APNs! Size:", len(txt_fixed))
