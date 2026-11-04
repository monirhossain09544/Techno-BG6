import disasm_fp_root as d

# Find all references to GetMapScope$invoke$1 or Lo/checkAttributionI; or strings containing "rooted" (case-insensitive)
for idx, s in enumerate(d.strings):
    if "rooted" in s.lower() or "perseus" in s.lower() or "rootbeer" in s.lower():
        print(f"String [{idx}]: {s!r}")

# Find all classes implementing Lo/checkAttributionI; or referencing GetMapScope$invoke$1
for cidx in range(d.class_defs_size):
    c_tid, access, super_tid, iface_off, src_sid, ann_off, cdata_off, svals_off = d.struct.unpack_from("<IIIIIIII", d.data, d.class_defs_off + cidx * 32)
    cname = d.get_type(c_tid)
    ifaces = []
    if iface_off != 0:
        sz = d.struct.unpack_from("<I", d.data, iface_off)[0]
        for i in range(sz):
            itid = d.struct.unpack_from("<H", d.data, iface_off + 4 + i * 2)[0]
            ifaces.append(d.get_type(itid))
    if " Lo/checkAttributionI;" in " " + " ".join(ifaces) or "Rooted" in cname:
        print(f"Class {cname} implements {ifaces}")
