import zipfile, struct

# 1. Inspect HTMLViewer.apk
html_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\HTMLViewer.apk"
with zipfile.ZipFile(html_apk, 'r') as z:
    print("HTMLViewer entries:", z.namelist())
    if 'classes.dex' in z.namelist():
        hdex = z.read('classes.dex')
        print("HTMLViewer classes.dex size:", len(hdex))

# 2. Inspect OSFileManager.apk strings & methods for Intent.setPackage / setClassName / text/plain / Li9/h;->G
osfm_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk"
with zipfile.ZipFile(osfm_apk, 'r') as z:
    dex = z.read('classes.dex')

string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 56)
type_ids_size, type_ids_off = struct.unpack_from('<II', dex, 64)
proto_ids_size, proto_ids_off = struct.unpack_from('<II', dex, 72)
field_ids_size, field_ids_off = struct.unpack_from('<II', dex, 80)
method_ids_size, method_ids_off = struct.unpack_from('<II', dex, 88)

def read_uleb128(data, off):
    result = 0
    shift = 0
    while True:
        b = data[off]
        off += 1
        result |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return result, off

strings = []
for i in range(string_ids_size):
    soff = struct.unpack_from('<I', dex, string_ids_off + i*4)[0]
    _, doff = read_uleb128(dex, soff)
    end = dex.find(b'\x00', doff)
    strings.append(dex[doff:end].decode('utf-8', errors='replace'))

types = []
for i in range(type_ids_size):
    tid = struct.unpack_from('<I', dex, type_ids_off + i*4)[0]
    types.append(strings[tid])

for idx, s in enumerate(strings):
    if s in ('text/plain', 'text/*', 'txt', '.txt', 'htmlviewer', 'com.android.htmlviewer'):
        print(f"String[0x{idx:04x}] = {s!r}")

print("\nSearching Intent methods:")
for mid in range(method_ids_size):
    cid, pid, nid = struct.unpack_from('<HHI', dex, method_ids_off + mid*8)
    cname = types[cid]
    mname = strings[nid]
    if cname == 'Landroid/content/Intent;':
        sid, rtid, poff = struct.unpack_from('<III', dex, proto_ids_off + pid*12)
        print(f"  Method[0x{mid:04x}] {cname}->{mname} ({strings[sid]})")

print("\nSearching String methods:")
for mid in range(method_ids_size):
    cid, pid, nid = struct.unpack_from('<HHI', dex, method_ids_off + mid*8)
    cname = types[cid]
    mname = strings[nid]
    if cname == 'Ljava/lang/String;' and mname in ('startsWith', 'equals', 'endsWith', 'contains'):
        sid, rtid, poff = struct.unpack_from('<III', dex, proto_ids_off + pid*12)
        print(f"  Method[0x{mid:04x}] {cname}->{mname} ({strings[sid]}) -> {types[rtid]}")
