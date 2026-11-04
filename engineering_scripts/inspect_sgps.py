import re, zipfile

apk_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SGPS.apk"
with zipfile.ZipFile(apk_path, "r") as z:
    print("Files in SGPS.apk:", z.namelist())
    raw = b"".join(z.read(f) for f in z.namelist() if f.endswith((".dex", ".arsc", ".xml")))

strs = re.findall(b"[\x20-\x7e]{4,}", raw)
clean = sorted(set(x.decode("ascii", "ignore") for x in strs))

print("=== SGPS UI CONTROLS & SWITCHES ===")
for s in clean:
    if any(k in s for k in ["-$$Nest$fget", "Switch", "CheckBox", "RadioButton", "Spinner", "Button", "Layout"]) and not any(s.startswith(p) for p in ("Lkotlin", "Ljava", "Landroid", "Landroidx", "Lcom/google")):
        print(" ", s)

print("\n=== SGPS GNSS COMMANDS & CONFIG PROPERTIES ===")
for s in clean:
    if any(k in s for k in ["$SGPS", "PROPERTY", "config.xml", "supl.xml", "SPREADORBIT", "VDR", "RTK", "RTD", "REALEPH", "GALILEO", "GLONASS", "BDS", "MOCK", "AUTO", "CEP", "NMEA", "FLOAT-CN0", "KALMAN", "WHITE-LIST", "BASEBAND", "MINIPVT", "CMCC", "TSX", "CP-MODE", "FL_"]):
        print(" ", s)
