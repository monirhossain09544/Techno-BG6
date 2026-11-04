from pathlib import Path
import hashlib, json, re, struct, sys, zlib
sys.stdout.reconfigure(encoding='utf-8')
ROOT = Path(__file__).parent / 'notification-baseline'
source = ROOT / 'settings.live.before.vdex'
b = bytearray(source.read_bytes())
u32 = lambda data, pos: struct.unpack_from('<I', data, pos)[0]

def uleb(data, pos):
    out = shift = 0
    while True:
        v = data[pos]; pos += 1
        out |= (v & 127) << shift
        if not v & 128: return out, pos
        shift += 7
        assert shift <= 35

def string(data, index):
    count, table = struct.unpack_from('<II', data, 56)
    assert index < count
    pos = u32(data, table + 4 * index)
    _, pos = uleb(data, pos)
    return data[pos:data.index(0, pos)].decode('utf-8', 'replace')

def typ(data, index):
    return string(data, u32(data, u32(data, 68) + index * 4))

changes = []
for dexnum, match in enumerate(re.finditer(b'dex\\n0[0-9]{2}\\x00', b), 1):
    start = match.start()
    size = u32(b, start + 32)
    assert u32(b, start + 36) == 112 and u32(b, start + 40) == 0x12345678
    assert start + size <= len(b)
    d = bytearray(b[start:start+size])
    print('DEX', dexnum, hex(start), size, 'sha1_valid=', d[12:32] == hashlib.sha1(d[32:]).digest(), 'adler_valid=', u32(d, 8) == zlib.adler32(d[12:]) & 0xffffffff)
    classes, ctable = struct.unpack_from('<II', d, 96)
    for ci in range(classes):
        row = struct.unpack_from('<8I', d, ctable + ci * 32)
        owner = typ(d, row[0])
        if owner != 'Lcom/android/settings/notification/CallVolumePreferenceController;': continue
        pos = row[6]
        counts = []
        for _ in range(4):
            n, pos = uleb(d, pos); counts.append(n)
        for _ in range(counts[0] + counts[1]):
            _, pos = uleb(d, pos); _, pos = uleb(d, pos)
        for count in counts[2:]:
            mid = 0
            for _ in range(count):
                diff, pos = uleb(d, pos); mid += diff
                flags, pos = uleb(d, pos); code, pos = uleb(d, pos)
                cls, proto, nameidx = struct.unpack_from('<HHI', d, u32(d, 92) + mid * 8)
                name = string(d, nameidx)
                if name != 'getAvailabilityStatus': continue
                shorty, ret, params = struct.unpack_from('<III', d, u32(d, 76) + proto * 12)
                assert typ(d, ret) == 'I' and params == 0
                regs, ins, outs, tries, debug, units = struct.unpack_from('<4H2I', d, code)
                words = struct.unpack_from('<' + str(units) + 'H', d, code+16)
                print('TARGET', owner, name, hex(code), 'registers=', regs, 'words=', [hex(v) for v in words])
                assert units == 2 and words == (0x3012, 0x000f) and tries == 0
                struct.pack_into('<H', d, code+16, 0x0012)
                changes.append({'dex': dexnum, 'dex_start': start, 'method': owner + '->' + name + '()I', 'code_offset': code, 'instruction_offset': start+code+16, 'before': '1230', 'after': '1200'})
    if changes and changes[-1]['dex'] == dexnum:
        # This is the device's existing patched ART cache, not a rebuilt APK.
        # Preserve the source identity headers expected by its matching OAT.
        # Earlier live patches likewise retain these original header values.
        b[start:start+size] = d
assert len(changes) == 1, changes
assert sum(x != y for x, y in zip(source.read_bytes(), b)) == 1
out = ROOT / 'settings.call-volume.vdex'
out.write_bytes(b)
manifest = {'before_sha256': hashlib.sha256(source.read_bytes()).hexdigest(), 'after_sha256': hashlib.sha256(b).hexdigest(), 'size': len(b), 'changes': changes}
(ROOT / 'call-volume.patch.json').write_text(json.dumps(manifest, indent=2), encoding='utf-8')
print(json.dumps(manifest, indent=2))
