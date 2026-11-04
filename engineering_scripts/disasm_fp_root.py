import struct

data = open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\fp_classes3.dex", "rb").read()

string_ids_size, string_ids_off = struct.unpack_from("<II", data, 0x38)
type_ids_size, type_ids_off = struct.unpack_from("<II", data, 0x40)
proto_ids_size, proto_ids_off = struct.unpack_from("<II", data, 0x48)
field_ids_size, field_ids_off = struct.unpack_from("<II", data, 0x50)
method_ids_size, method_ids_off = struct.unpack_from("<II", data, 0x58)
class_defs_size, class_defs_off = struct.unpack_from("<II", data, 0x60)

def read_uleb128(buf, pos):
    result = 0
    shift = 0
    while True:
        b = buf[pos]
        pos += 1
        result |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return result, pos

strings = []
for i in range(string_ids_size):
    off = struct.unpack_from("<I", data, string_ids_off + i * 4)[0]
    _, pos = read_uleb128(data, off)
    end = data.find(b"\x00", pos)
    strings.append(data[pos:end].decode("utf-8", errors="replace"))

def get_type(tid):
    if tid >= type_ids_size: return f"type_{tid}"
    sid = struct.unpack_from("<I", data, type_ids_off + tid * 4)[0]
    return strings[sid]

def get_proto(pid):
    if pid >= proto_ids_size: return "()"
    shorty_idx, ret_tid, params_off = struct.unpack_from("<III", data, proto_ids_off + pid * 12)
    params = []
    if params_off != 0:
        sz = struct.unpack_from("<I", data, params_off)[0]
        for i in range(sz):
            ptid = struct.unpack_from("<H", data, params_off + 4 + i * 2)[0]
            params.append(get_type(ptid))
    return f"({''.join(params)}){get_type(ret_tid)}"

def get_method(mid):
    if mid >= method_ids_size: return f"method_{mid}"
    cid, pid, nid = struct.unpack_from("<HHI", data, method_ids_off + mid * 8)
    return f"{get_type(cid)}->{strings[nid]}{get_proto(pid)}"

def get_field(fid):
    if fid >= field_ids_size: return f"field_{fid}"
    cid, tid, nid = struct.unpack_from("<HHI", data, field_ids_off + fid * 8)
    return f"{get_type(cid)}->{strings[nid]}:{get_type(tid)}"

# Dalvik opcode width in 16-bit units (2 bytes each)
OP_LEN = {}
for op in range(256):
    if op in (0x00, 0x01, 0x04, 0x07, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x1d, 0x1e, 0x21, 0x27, 0x28) or (0x3e <= op <= 0x43) or (0x73 <= op <= 0x73) or (0x79 <= op <= 0x8f) or (0xb0 <= op <= 0xcf):
        OP_LEN[op] = 2
    elif op in (0x02, 0x05, 0x08, 0x13, 0x15, 0x16, 0x19, 0x1a, 0x1c, 0x1f, 0x20, 0x22, 0x23, 0x29, 0x2d, 0x2e, 0x2f, 0x30, 0x31) or (0x32 <= op <= 0x3d) or (0x44 <= op <= 0x6d) or (0x90 <= op <= 0xaf) or (0xd0 <= op <= 0xe2):
        OP_LEN[op] = 4
    elif op in (0x03, 0x06, 0x09, 0x14, 0x17, 0x1b, 0x24, 0x25, 0x26, 0x2a, 0x2b, 0x2c) or (0x6e <= op <= 0x72) or (0x74 <= op <= 0x78) or (0xfa <= op <= 0xfd):
        OP_LEN[op] = 6
    elif op == 0x18:
        OP_LEN[op] = 10
    else:
        OP_LEN[op] = 2

def dump_code(code_off):
    regs, ins, outs, tries, dbg_off, insns_size = struct.unpack_from("<HHHHII", data, code_off)
    insns = data[code_off + 16 : code_off + 16 + insns_size * 2]
    i = 0
    while i < len(insns):
        op = insns[i]
        # payload pseudo-instructions
        if op == 0x00 and i + 2 <= len(insns):
            ident = insns[i+1]
            if ident == 0x01 and i + 4 <= len(insns): # packed-switch
                sz = struct.unpack_from("<H", insns, i + 2)[0]
                i += (sz * 2 + 4) * 2
                continue
            elif ident == 0x02 and i + 4 <= len(insns): # sparse-switch
                sz = struct.unpack_from("<H", insns, i + 2)[0]
                i += (sz * 4 + 2) * 2
                continue
            elif ident == 0x03 and i + 8 <= len(insns): # fill-array-data
                ew = struct.unpack_from("<H", insns, i + 2)[0]
                sz = struct.unpack_from("<I", insns, i + 4)[0]
                i += ((sz * ew + 1) // 2 + 4) * 2
                continue
        step = OP_LEN.get(op, 2)
        if op == 0x1a and i + 4 <= len(insns):
            reg = insns[i+1]
            sid = struct.unpack_from("<H", insns, i + 2)[0]
            if sid < len(strings):
                print(f"    0x{i//2:04x}: const-string v{reg}, {strings[sid]!r}")
        elif op == 0x1b and i + 6 <= len(insns):
            reg = insns[i+1]
            sid = struct.unpack_from("<I", insns, i + 2)[0]
            if sid < len(strings):
                print(f"    0x{i//2:04x}: const-string/jumbo v{reg}, {strings[sid]!r}")
        elif op in (0x6e, 0x6f, 0x70, 0x71, 0x72, 0x74, 0x75, 0x76, 0x77, 0x78) and i + 6 <= len(insns):
            mid = struct.unpack_from("<H", insns, i + 2)[0]
            print(f"    0x{i//2:04x}: invoke-0x{op:02x} {get_method(mid)}")
        elif (0x60 <= op <= 0x6d) and i + 4 <= len(insns):
            fid = struct.unpack_from("<H", insns, i + 2)[0]
            print(f"    0x{i//2:04x}: sfield-0x{op:02x} {get_field(fid)}")
        elif (0x52 <= op <= 0x5f) and i + 4 <= len(insns):
            fid = struct.unpack_from("<H", insns, i + 2)[0]
            print(f"    0x{i//2:04x}: ifield-0x{op:02x} {get_field(fid)}")
        elif op == 0x1c and i + 4 <= len(insns):
            tid = struct.unpack_from("<H", insns, i + 2)[0]
            print(f"    0x{i//2:04x}: const-class {get_type(tid)}")
        elif op == 0x22 and i + 4 <= len(insns):
            tid = struct.unpack_from("<H", insns, i + 2)[0]
            print(f"    0x{i//2:04x}: new-instance {get_type(tid)}")
        i += step

target_classes = {
    "Lo/isApiKeyPresentandroid_sdk_base_releaseannotations;",
    "Lo/isSdkDisabledOrDelayed;",
    "Lcom/scottyab/rootbeer/RootBeerNative;",
    "Lcom/roadrunner/map/container/context/GetMapScope$invoke$1;",
    "Lo/NoOpUpdatelambda0;",
}

for cidx in range(class_defs_size):
    c_tid, access, super_tid, iface_off, src_sid, ann_off, cdata_off, svals_off = struct.unpack_from("<IIIIIIII", data, class_defs_off + cidx * 32)
    cname = get_type(c_tid)
    if cname not in target_classes:
        continue
    print(f"\n================ CLASS {cname} ================")
    if cdata_off == 0:
        continue
    pos = cdata_off
    sf_size, pos = read_uleb128(data, pos)
    if_size, pos = read_uleb128(data, pos)
    dm_size, pos = read_uleb128(data, pos)
    vm_size, pos = read_uleb128(data, pos)
    fid = 0
    for _ in range(sf_size):
        dfid, pos = read_uleb128(data, pos)
        fid += dfid
        fflags, pos = read_uleb128(data, pos)
        print(f"  sfield: {get_field(fid)}")
    fid = 0
    for _ in range(if_size):
        dfid, pos = read_uleb128(data, pos)
        fid += dfid
        fflags, pos = read_uleb128(data, pos)
        print(f"  ifield: {get_field(fid)}")
    for mlist_size in (dm_size, vm_size):
        mid = 0
        for _ in range(mlist_size):
            dmid, pos = read_uleb128(data, pos)
            mid += dmid
            mflags, pos = read_uleb128(data, pos)
            code_off, pos = read_uleb128(data, pos)
            print(f"\n  METHOD {get_method(mid)} (flags=0x{mflags:x}, code=0x{code_off:x}):")
            if code_off != 0:
                dump_code(code_off)
