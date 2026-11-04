import disasm_fp_root as d

d.target_classes = {
    "Lo/isEphemeralEventKeylambda1;",
    "Lcom/roadrunner/rider/support/implementation/RiderSupportRootedCheckImpl;",
}
for cidx in range(d.class_defs_size):
    c_tid, access, super_tid, iface_off, src_sid, ann_off, cdata_off, svals_off = d.struct.unpack_from("<IIIIIIII", d.data, d.class_defs_off + cidx * 32)
    cname = d.get_type(c_tid)
    if cname not in d.target_classes:
        continue
    print(f"\n================ CLASS {cname} ================")
    if cdata_off == 0:
        continue
    pos = cdata_off
    sf_size, pos = d.read_uleb128(d.data, pos)
    if_size, pos = d.read_uleb128(d.data, pos)
    dm_size, pos = d.read_uleb128(d.data, pos)
    vm_size, pos = d.read_uleb128(d.data, pos)
    fid = 0
    for _ in range(sf_size):
        dfid, pos = d.read_uleb128(d.data, pos)
        fid += dfid
        fflags, pos = d.read_uleb128(d.data, pos)
        print(f"  sfield: {d.get_field(fid)}")
    fid = 0
    for _ in range(if_size):
        dfid, pos = d.read_uleb128(d.data, pos)
        fid += dfid
        fflags, pos = d.read_uleb128(d.data, pos)
        print(f"  ifield: {d.get_field(fid)}")
    for mlist_size in (dm_size, vm_size):
        mid = 0
        for _ in range(mlist_size):
            dmid, pos = d.read_uleb128(d.data, pos)
            mid += dmid
            mflags, pos = d.read_uleb128(d.data, pos)
            code_off, pos = d.read_uleb128(d.data, pos)
            print(f"\n  METHOD {d.get_method(mid)} (flags=0x{mflags:x}, code=0x{code_off:x}):")
            if code_off != 0:
                d.dump_code(code_off)
