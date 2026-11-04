import struct, zipfile, sys

sys.stdout.reconfigure(encoding='utf-8')
z = zipfile.ZipFile(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranSettings.apk')
data = z.read('AndroidManifest.xml')

def uleb128(data, pos):
    result = 0
    shift = 0
    while True:
        b = data[pos]
        pos += 1
        result |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return result, pos

pos = 8
strings = []
lines = []
while pos < len(data):
    ctype, chdr, csize = struct.unpack_from('<HHI', data, pos)
    if ctype == 0x0001:
        scnt, stylecnt, flags, soff, styleoff = struct.unpack_from('<IIIII', data, pos+8)
        is_utf8 = (flags & (1 << 8)) != 0
        for i in range(scnt):
            off = struct.unpack_from('<I', data, pos + 28 + i*4)[0]
            p = pos + soff + off
            if is_utf8:
                _, p = uleb128(data, p)
                blen, p = uleb128(data, p)
                strings.append(data[p:p+blen].decode('utf-8', 'replace'))
            else:
                clen = struct.unpack_from('<H', data, p)[0]
                strings.append(data[p+2:p+2+clen*2].decode('utf-16le', 'replace'))
    elif ctype == 0x0102:
        ns, name, attr_start, attr_size, attr_cnt = struct.unpack_from('<IIHHH', data, pos+16)
        tname = strings[name] if name < len(strings) else f"#{name}"
        attrs = []
        apos = pos + 16 + attr_start
        for _ in range(attr_cnt):
            ans, aname, raw_val, tsize, r0, dtype, dval = struct.unpack_from('<IIIHBBI', data, apos)
            an = strings[aname] if aname < len(strings) else f"#{aname}"
            if dtype == 3 and dval < len(strings):
                av = repr(strings[dval])
            elif dtype == 1:
                av = f"@0x{dval:08x}"
            elif dtype == 18:
                av = str(bool(dval))
            else:
                av = f"0x{dval:x}(t={dtype})"
            attrs.append(f"{an}={av}")
            apos += attr_size
        lines.append(f"<{tname} {' '.join(attrs)}>")
    elif ctype == 0x0103:
        ns, name = struct.unpack_from('<II', data, pos+16)
        tname = strings[name] if name < len(strings) else f"#{name}"
        lines.append(f"</{tname}>")
    pos += csize

for idx, line in enumerate(lines):
    if any(k in line for k in ['AppBootser', 'AdvancedSettingsActivity', 'AlarmsAndReminders', 'MediaManagement', 'TurnScreenOn', 'HighPower']):
        print('\n'.join(lines[max(0, idx-2):min(len(lines), idx+15)]))
        print('='*50)
