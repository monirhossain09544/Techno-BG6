import zipfile, struct, hashlib, zlib

src_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager.apk"
dst_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager_patched.apk"

with zipfile.ZipFile(src_apk, 'r') as z:
    dex = bytearray(z.read('classes.dex'))

# 0. Add "com.android.htmlviewer" at String[0x5d90] and "com.android.htmlviewer.HTMLViewerActivity"
#    at String[0x5d91], preserving strict lexicographical order and exact 107-byte total size
#    across (0x5d90, 0x5d91, 0x5d92) in string_data:
#    0x5d8f = 'com.android.externalstorage.documents'
#    0x5d90 = 'com.android.htmlviewer' (22 chars -> 24 bytes)
#    0x5d91 = 'com.android.htmlviewer.HTMLViewerActivity' (41 chars -> 43 bytes)
#    0x5d92 = 'com.android.internal.os.PowerProfile__' (38 chars -> 40 bytes)
#    0x5d93 = 'com.android.internal.view.menu.MenuBuilder'
string_ids_size, string_ids_off = struct.unpack_from('<II', dex, 56)
off_5d90 = struct.unpack_from('<I', dex, string_ids_off + 0x5d90 * 4)[0]
off_5d93 = struct.unpack_from('<I', dex, string_ids_off + 0x5d93 * 4)[0]
assert off_5d93 == off_5d90 + 107, f"Unexpected off_5d93 - off_5d90: {off_5d93 - off_5d90}"

s0 = b"com.android.htmlviewer"
s1 = b"com.android.htmlviewer.HTMLViewerActivity"
s2 = b"com.android.internal.os.PowerProfile__"
blob = (
    bytes([len(s0)]) + s0 + b"\x00" +
    bytes([len(s1)]) + s1 + b"\x00" +
    bytes([len(s2)]) + s2 + b"\x00"
)
assert len(blob) == 107
dex[off_5d90 : off_5d90 + 107] = blob
struct.pack_into('<I', dex, string_ids_off + 0x5d90 * 4, off_5d90)
struct.pack_into('<I', dex, string_ids_off + 0x5d91 * 4, off_5d90 + 24)
struct.pack_into('<I', dex, string_ids_off + 0x5d92 * 4, off_5d90 + 24 + 43)

# 1. Make Lo7/c0$b and Lo7/c0$b;-><init> public so Li9/h$i can instantiate it
assert struct.unpack_from('<I', dex, 0x13d9b8 + 4)[0] == 0x10
struct.pack_into('<I', dex, 0x13d9b8 + 4, 0x11)  # ACC_PUBLIC | ACC_FINAL
assert dex[0x65a654] == 0x80
dex[0x65a654] = 0x81  # ACC_PUBLIC | ACC_CONSTRUCTOR (ULEB128 81 80 04)

# 1a. Patch Lo7/c0$b;->s @ 0x3fa304 (insns_size = 200)
#    - At 0x0024..0x0043 (32 words): if v14.k != null use v14.k.b().D() else use Lo9/a;->b
#    - At 0x0090..0x0095 (6 words): nop out v14.k.b() for LiveData.observe
#    - At 0x00a6..0x00a8 (3 words): use LiveData;->i(Observer) (observeForever)
code_off_c0bs = 0x3fa304
_, _, _, _, _, sz_c0bs = struct.unpack_from('<HHHHII', dex, code_off_c0bs)
assert sz_c0bs == 200, f"Unexpected sz_c0bs: {sz_c0bs}"

insns_c0bs_24_43 = [
    0x0412,                  # 0x0024: const/4 v4, 0x0
    0x0512,                  # 0x0025: const/4 v5, 0x0
    0x3070, 0xb404, 0x0543,  # 0x0026: invoke-direct {v3, v4, v5}, Lo7/o0;-><init>(II)V
    0x2070, 0x2f3c, 0x0031,  # 0x0029: invoke-direct {v1, v3}, Landroidx/lifecycle/c0;-><init>(Ljava/lang/Object;)V
    0xf15b, 0x61eb,          # 0x002c: iput-object v1, v15, Lqb/v;->a:Ljava/lang/Object;
    0x0822, 0x1ce6,          # 0x002e: new-instance v8, Lqb/v;
    0x1070, 0xbd35, 0x0008,  # 0x0030: invoke-direct {v8}, Lqb/v;-><init>()V
    0x0122, 0x0f27,          # 0x0033: new-instance v1, Lcom/transsion/widgetslib/dialog/ProgressDialog;
    0xe354, 0x5beb,          # 0x0035: iget-object v3, v14, Lo7/c0$b;->k:Ln7/a;
    0x0338, 0x000b,          # 0x0037: if-eqz v3, 0x0042 (:use_static_ctx)
    0x1072, 0xae56, 0x0003,  # 0x0039: invoke-interface {v3}, Ln7/a;->b()Lb7/a;
    0x030c,                  # 0x003c: move-result-object v3
    0x106e, 0x2ad5, 0x0003,  # 0x003d: invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->D()Landroid/content/Context;
    0x030c,                  # 0x0040: move-result-object v3
    0x0328,                  # 0x0041: goto 0x0044
    0x0362, 0x5d54           # 0x0042: sget-object v3, Lo9/a;->b:Landroid/content/Context;
]
assert len(insns_c0bs_24_43) == 32
for i, w in enumerate(insns_c0bs_24_43):
    struct.pack_into('<H', dex, code_off_c0bs + 16 + 2*(0x24 + i), w)
for i in range(6):
    struct.pack_into('<H', dex, code_off_c0bs + 16 + 2*(0x90 + i), 0x0000)
for i, w in enumerate([0x206e, 0x2ee4, 0x0041]):
    struct.pack_into('<H', dex, code_off_c0bs + 16 + 2*(0xa6 + i), w)
struct.pack_into('<I', dex, code_off_c0bs + 8, 0)

# 1b. Patch Lo7/c0$b$a;->s @ 0x3fa038 (insns_size = 249)
#     At 0x0034 (3 words): skip v5.h() when v5 (c0.i()) is null
code_off_c0ba = 0x3fa038
_, _, _, _, _, sz_c0ba = struct.unpack_from('<HHHHII', dex, code_off_c0ba)
assert sz_c0ba == 249, f"Unexpected sz_c0ba: {sz_c0ba}"
for i, w in enumerate([0x0538, 0x0006, 0x0000]):
    struct.pack_into('<H', dex, code_off_c0ba + 16 + 2*(0x34 + i), w)
struct.pack_into('<I', dex, code_off_c0ba + 8, 0)

# 1c. Patch Lo7/c0$b;->C @ 0x3fa5b0 (insns_size = 343)
#     Make FAIL branch (0x011f..0x012f and 0x014e..0x0150) null-safe when Ln7/a is null
code_off_c0bC = 0x3fa5b0
_, _, _, _, _, sz_c0bC = struct.unpack_from('<HHHHII', dex, code_off_c0bC)
assert sz_c0bC == 343, f"Unexpected sz_c0bC: {sz_c0bC}"
insns_c0bC_fail = [
    0x0174, 0xb2ec, 0x003f,  # 0x011f: invoke-virtual/range {v63}, Lo7/c0;->r()Lcom/transsion/widgetslib/dialog/PromptDialog;
    0x040c,                  # 0x0122: move-result-object v4
    0x0438, 0x0005,          # 0x0123: if-eqz v4, 0x0128
    0x106e, 0x049f, 0x0004,  # 0x0125: invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
]
assert len(insns_c0bC_fail) == 17
for i, w in enumerate(insns_c0bC_fail):
    struct.pack_into('<H', dex, code_off_c0bC + 16 + 2*(0x11f + i), w)
for i in range(3):
    struct.pack_into('<H', dex, code_off_c0bC + 16 + 2*(0x14e + i), 0x0000)
struct.pack_into('<I', dex, code_off_c0bC + 8, 0)

# 1d. Patch Lo7/c0$b;->D @ 0x3fa570 (insns_size = 24)
#     Dismiss PromptDialog directly and call Li9/h0.a.q(0) after MediaScanner finishes
code_off_c0bD = 0x3fa570
_, _, _, _, _, sz_c0bD = struct.unpack_from('<HHHHII', dex, code_off_c0bD)
assert sz_c0bD == 24, f"Unexpected sz_c0bD: {sz_c0bD}"
insns_c0bD = [
    0x0214, 0x018c, 0x7f0f,  # const v2, 0x7f0f018c ("Uncompressed successfully")
    0x1071, 0x8ab9, 0x0002,  # invoke-static {v2}, Lg7/e;->e(I)V
    0x106e, 0xb2ec, 0x0001,  # invoke-virtual {v1}, Lo7/c0;->r()Lcom/transsion/widgetslib/dialog/PromptDialog;
    0x010c,                  # move-result-object v1
    0x0138, 0x0005,          # if-eqz v1, +5
    0x106e, 0x049f, 0x0001,  # invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    0x0062, 0x5080,          # sget-object v0, Li9/h0;->a:Li9/h0;
    0x0112,                  # const/4 v1, 0x0
    0x206e, 0x9470, 0x0010,  # invoke-virtual {v0, v1}, Li9/h0;->q(I)V
    0x000e,                  # return-void
    0x0000, 0x0000
]
assert len(insns_c0bD) == 24
for i, w in enumerate(insns_c0bD):
    struct.pack_into('<H', dex, code_off_c0bD + 16 + 2*i, w)
struct.pack_into('<I', dex, code_off_c0bD + 8, 0)

# 2. Patch Li9/h$i;->s @ 0x3823dc (insns_size = 147)
code_off_2 = 0x3823dc
regs2, ins2, outs2, tries2, dbg2, sz2 = struct.unpack_from('<HHHHII', dex, code_off_2)
assert sz2 == 147, f"Unexpected sz2: {sz2}"
struct.pack_into('<H', dex, code_off_2 + 4, 7)  # outs = 7 for Lo7/c0$b;-><init>

insns_2 = [
    # 0x0000..0x001c
    0x0071, 0x95e7, 0x0000,  # 0x0000: invoke-static {}, Lib/b;->c()Ljava/lang/Object;
    0x000c,                  # 0x0003: move-result-object v0
    0x6152, 0x5061,          # 0x0004: iget v1, v6, Li9/h$i;->j:I
    0x1212,                  # 0x0006: const/4 v2, 0x1
    0x0138, 0x0013,          # 0x0007: if-eqz v1, 0x001a
    0x2133, 0x0009,          # 0x0009: if-ne v1, v2, 0x0012
    0x1071, 0x8516, 0x0007,  # 0x000b: invoke-static {v7}, Leb/n;->b(Ljava/lang/Object;)V
    0x4f28,                  # 0x000e: goto 0x005d (:to_return_unit)
    0x070d,                  # 0x000f: move-exception v7
    0x0029, 0x0077,          # 0x0010: goto/16 0x0087
    0x0722, 0x15dd,          # 0x0012: new-instance v7, Ljava/lang/IllegalStateException;
    0x001a, 0x5c10,          # 0x0014: const-string v0, "call to 'resume'..."
    0x2070, 0x9c04, 0x0007,  # 0x0016: invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    0x0727,                  # 0x0019: throw v7
    0x1071, 0x8516, 0x0007,  # 0x001a: invoke-static {v7}, Leb/n;->b(Ljava/lang/Object;)V
    # 0x001d..0x005d (check application/zip + invoke Lo7/c0$b on Dispatchers.Main)
    0x6154, 0x5062,          # 0x001d: iget-object v1, v6, Li9/h$i;->k:Lcom/android/datastore/model/FileInfoModel;
    0x106e, 0x44a7, 0x0001,  # 0x001f: invoke-virtual {v1}, Lcom/android/datastore/model/FileInfoModel;->getMimeType()Ljava/lang/String;
    0x050c,                  # 0x0022: move-result-object v5
    0x031a, 0x5a2c,          # 0x0023: const-string v3, "application/zip"
    0x206e, 0x9ca5, 0x0053,  # 0x0025: invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0x030a,                  # 0x0028: move-result v3
    0x0338, 0x0035,          # 0x0029: if-eqz v3, 0x005e (:not_zip)
    0x6259, 0x5061,          # 0x002b: iput v2, v6, Li9/h$i;->j:I
    0x6354, 0x5063,          # 0x002d: iget-object v3, v6, Li9/h$i;->l:Landroid/content/Context;
    0x0369, 0x5d54,          # 0x002f: sput-object v3, Lo9/a;->b:Landroid/content/Context;
    0x1407,                  # 0x0031: move-object v4, v1
    0x6707,                  # 0x0032: move-object v7, v6
    0x0222, 0x1a94,          # 0x0033: new-instance v2, Lo7/c0;
    0x1070, 0xb2de, 0x0002,  # 0x0035: invoke-direct {v2}, Lo7/c0;-><init>()V
    0x0322, 0x1ce4,          # 0x0038: new-instance v3, Lqb/t;
    0x1070, 0xbd31, 0x0003,  # 0x003a: invoke-direct {v3}, Lqb/t;-><init>()V
    0x0522, 0x1ce4,          # 0x003d: new-instance v5, Lqb/t;
    0x1070, 0xbd31, 0x0005,  # 0x003f: invoke-direct {v5}, Lqb/t;-><init>()V
    0x0022, 0x1a93,          # 0x0042: new-instance v0, Lo7/c0$b;
    0x0112,                  # 0x0044: const/4 v1, 0x0
    0x0612,                  # 0x0045: const/4 v6, 0x0
    0x0776, 0xb2d0, 0x0000,  # 0x0046: invoke-direct/range {v0 .. v6}, Lo7/c0$b;-><init>(Ln7/a;Lo7/c0;Lqb/t;Lcom/android/datastore/model/FileInfoModel;Lqb/t;Lhb/d;)V
    0x7607,                  # 0x0049: move-object v6, v7
    0x0071, 0xdd8a, 0x0000,  # 0x004a: invoke-static {}, Lyb/v0;->c()Lyb/a2;
    0x070c,                  # 0x004d: move-result-object v7
    0x3071, 0xdc9c, 0x0607,  # 0x004e: invoke-static {v7, v0, v6}, Lyb/g;->e(Lhb/g;Lpb/p;Lhb/d;)Ljava/lang/Object;
    0x070c,                  # 0x0051: move-result-object v7
    0x0071, 0x95e7, 0x0000,  # 0x0052: invoke-static {}, Lib/b;->c()Ljava/lang/Object;
    0x010c,                  # 0x0055: move-result-object v1
    0x1733, 0x0007,          # 0x0056: if-ne v7, v1, 0x005d (:to_return_unit)
    0x0111,                  # 0x0058: return-object v1
    0x0000, 0x0000, 0x0000, 0x0000,
    # :to_return_unit (0x005d)
    0x3328,                  # 0x005d: goto 0x0090 (:return_unit)
    # :not_zip (0x005e..0x0086)
    0x6354, 0x5063,          # 0x005e: iget-object v3, v6, Li9/h$i;->l:Landroid/content/Context;
    0x0022, 0x15a7,          # 0x0060: new-instance v0, Ljava/io/File;
    0x106e, 0x44ab, 0x0001,  # 0x0062: invoke-virtual {v1}, Lcom/android/datastore/model/FileInfoModel;->getPath()Ljava/lang/String;
    0x040c,                  # 0x0065: move-result-object v4
    0x2070, 0x9abc, 0x0040,  # 0x0066: invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    0x041a, 0x5e6e,          # 0x0069: const-string v4, "com.transsion.filemanagerx.fileprovider"
    0x3071, 0x24f6, 0x0043,  # 0x006b: invoke-static {v3, v4, v0}, Landroidx/core/content/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    0x070c,                  # 0x006e: move-result-object v7
    0x0022, 0x011d,          # 0x006f: new-instance v0, Landroid/content/Intent;
    0x041a, 0x58a3,          # 0x0071: const-string v4, "android.intent.action.VIEW"
    0x2070, 0x05f4, 0x0040,  # 0x0073: invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    0x306e, 0x0629, 0x0570,  # 0x0076: invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    0x206e, 0x05f7, 0x0020,  # 0x0079: invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    0x0462, 0x5081,          # 0x007c: sget-object v4, Li9/h;->a:Li9/h;
    0x206e, 0x9487, 0x0004,  # 0x007e: invoke-virtual {v4, v0}, Li9/h;->u(Landroid/content/Intent;)V
    0x0000,                  # 0x0081: nop
    0x0000,                  # 0x0082: nop
    0x206e, 0x05dd, 0x0003,  # 0x0083: invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    0x0a28,                  # 0x0086: goto 0x0090 (:return_unit)
    # 0x0087..0x0092 (exception handler + return)
    0x106e, 0x9be9, 0x0007,  # 0x0087: invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    0x0714, 0x00e0, 0x7f0f,  # 0x008a: const v7, 0x7f0f00e0
    0x1071, 0x8ab9, 0x0007,  # 0x008d: invoke-static {v7}, Lg7/e;->e(I)V
    0x0762, 0x4b0a,          # 0x0090: sget-object v7, Leb/v;->a:Leb/v;
    0x0711                   # 0x0092: return-object v7
]
assert len(insns_2) == 147, f"Actual len: {len(insns_2)}"
for i, w in enumerate(insns_2):
    struct.pack_into('<H', dex, code_off_2 + 16 + 2*i, w)
struct.pack_into('<I', dex, code_off_2 + 8, 0)

# 2b. Patch Li9/h;->u(Landroid/content/Intent;)V @ 0x383e08 (insns_size = 52)
#     Routes text/plain, text/html, and application/pdf directly to native
#     com.android.htmlviewer / com.android.htmlviewer.HTMLViewerActivity
code_off_u = 0x383e08
regsu, insu, outsu, triesu, dbgu, szu = struct.unpack_from('<HHHHII', dex, code_off_u)
assert szu == 52, f"Unexpected szu: {szu}"

insns_u = [
    0x001a, 0x6ffe,          # 0x0000: const-string v0, "isFromFileManager"
    0x1112,                  # 0x0002: const/4 v1, 0x1
    0x306e, 0x061b, 0x0104,  # 0x0003: invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    0x106e, 0x060f, 0x0004,  # 0x0006: invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;
    0x000c,                  # 0x0009: move-result-object v0
    0x0038, 0x0021,          # 0x000a: if-eqz v0, 0x002b (:return)
    0x011a, 0x8fb3,          # 0x000c: const-string v1, "text/plain"
    0x206e, 0x9ca5, 0x0001,  # 0x000e: invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0x010a,                  # 0x0011: move-result v1
    0x0139, 0x0012,          # 0x0012: if-nez v1, 0x0024 (:set_comp)
    0x011a, 0x8fb2,          # 0x0014: const-string v1, "text/html"
    0x206e, 0x9ca5, 0x0001,  # 0x0016: invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0x010a,                  # 0x0019: move-result v1
    0x0139, 0x000a,          # 0x001a: if-nez v1, 0x0024 (:set_comp)
    0x011a, 0x5a05,          # 0x001c: const-string v1, "application/pdf"
    0x206e, 0x9ca5, 0x0001,  # 0x001e: invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0x010a,                  # 0x0021: move-result v1
    0x0138, 0x0009,          # 0x0022: if-eqz v1, 0x002b (:return)
    # :set_comp (0x0024)
    0x001a, 0x5d90,          # 0x0024: const-string v0, "com.android.htmlviewer"
    0x011a, 0x5d91,          # 0x0026: const-string v1, "com.android.htmlviewer.HTMLViewerActivity"
    0x306e, 0x0626, 0x0104,  # 0x0028: invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    # :return (0x002b..0x0033)
    0x000e,                  # 0x002b: return-void
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
]
assert len(insns_u) == 52, f"Actual lenu: {len(insns_u)}"
for i, w in enumerate(insns_u):
    struct.pack_into('<H', dex, code_off_u + 16 + 2*i, w)
struct.pack_into('<I', dex, code_off_u + 8, 0)

# 3. Patch Li9/h0;->q(I)V @ 0x389b7c (insns_size = 62) to also notify Lm9/a listeners when status == 0
code_off_3 = 0x389b7c
regs3, ins3, outs3, tries3, dbg3, sz3 = struct.unpack_from('<HHHHII', dex, code_off_3)
assert sz3 == 62, f"Unexpected sz3: {sz3}"

insns_3 = [
    0x0022, 0x011d,          # 0x0000: new-instance v0, Landroid/content/Intent;
    0x011a, 0x5e74,          # 0x0002: const-string v1, "com.transsion.filemanagerx.state_change"
    0x2070, 0x05f4, 0x0010,  # 0x0004: invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    0x011a, 0x8ea8,          # 0x0007: const-string v1, "state"
    0x306e, 0x0614, 0x0410,  # 0x0009: invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    0x011a, 0x82ac,          # 0x000c: const-string v1, "pkgName"
    0x021a, 0x5e2c,          # 0x000e: const-string v2, "com.transsion.filemanagerx"
    0x306e, 0x061a, 0x0210,  # 0x0010: invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    0x0071, 0xd4aa, 0x0000,  # 0x0013: invoke-static {}, Lx6/a;->a()Landroid/content/Context;
    0x010c,                  # 0x0016: move-result-object v1
    0x206e, 0x05da, 0x0001,  # 0x0017: invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    0x0439, 0x0014,          # 0x001a: if-nez v4, 0x002e (:return)
    0x0062, 0x25fb,          # 0x001c: sget-object v0, Lcom/transsion/filemanagerx/app/AppApplication;->f:Lcom/transsion/filemanagerx/app/AppApplication$a;
    0x106e, 0x689b, 0x0000,  # 0x001e: invoke-virtual {v0}, Lcom/transsion/filemanagerx/app/AppApplication$a;->d()Lu7/c;
    0x000c,                  # 0x0021: move-result-object v0
    0x106e, 0xcaca, 0x0000,  # 0x0022: invoke-virtual {v0}, Lu7/c;->K()Landroidx/lifecycle/c0;
    0x000c,                  # 0x0025: move-result-object v0
    0x106e, 0x2ee0, 0x0000,  # 0x0026: invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    0x010c,                  # 0x0029: move-result-object v1
    0x206e, 0x2f3d, 0x0010,  # 0x002a: invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->l(Ljava/lang/Object;)V
    0x000e,                  # 0x002d: return-void
    # :return (0x002e..0x003d)
    0x000e, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
]
assert len(insns_3) == 62, f"Actual len3: {len(insns_3)}"
for i, w in enumerate(insns_3):
    struct.pack_into('<H', dex, code_off_3 + 16 + 2*i, w)
struct.pack_into('<I', dex, code_off_3 + 8, 0)

# 4. Patch Lh9/o;->o()V @ 0x373e88 (insns_size = 16) to call this.o$b.d()
code_off_4 = 0x373e88
regs4, ins4, outs4, tries4, dbg4, sz4 = struct.unpack_from('<HHHHII', dex, code_off_4)
assert sz4 == 16, f"Unexpected sz4: {sz4}"
insns_4 = [
    0x106e, 0x2b63, 0x0001,  # invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->y0()Z
    0x000a,                  # move-result v0
    0x0038, 0x000b,          # if-eqz v0, 0x000f
    0x1054, 0x4ef6,          # iget-object v0, v1, Lh9/o;->?:Lh9/o$b;
    0x106e, 0x8fbe, 0x0000,  # invoke-virtual {v0}, Lh9/o$b;->d()V
    0x0000, 0x0000, 0x0000, 0x0000,
    0x000e                   # return-void
]
assert len(insns_4) == 16
for i, w in enumerate(insns_4):
    struct.pack_into('<H', dex, code_off_4 + 16 + 2*i, w)
struct.pack_into('<I', dex, code_off_4 + 8, 0)

# 5. Patch Lf9/l;->f()V @ 0x35315c (insns_size = 60)
code_off_5 = 0x35315c
regs5, ins5, outs5, tries5, dbg5, sz5 = struct.unpack_from('<HHHHII', dex, code_off_5)
assert sz5 == 60, f"Unexpected sz5: {sz5}"
insns_5 = [
    0x106e, 0x2b63, 0x0005,  # 0x0000: invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->y0()Z
    0x000a,                  # 0x0003: move-result v0
    0x0038, 0x0037,          # 0x0004: if-eqz v0, 0x003b (:return)
    0x106e, 0x3eb3, 0x0005,  # 0x0006: invoke-virtual {v5}, Lb7/b;->v2()Lcom/transsion/core/base/viewmodel/BaseViewModel;
    0x000c,                  # 0x0009: move-result-object v0
    0x001f, 0x0e79,          # 0x000a: check-cast v0, Lcom/transsion/filemanagerx/ui/storagefile/StorageFileViewModel;
    0x5154, 0x4c26,          # 0x000c: iget-object v1, v5, Lf9/l;->y0:Lcom/android/datastore/model/FileInfoModel;
    0x0222, 0x15a7,          # 0x000e: new-instance v2, Ljava/io/File;
    0x106e, 0x44ab, 0x0001,  # 0x0010: invoke-virtual {v1}, Lcom/android/datastore/model/FileInfoModel;->getPath()Ljava/lang/String;
    0x030c,                  # 0x0013: move-result-object v3
    0x2070, 0x9abc, 0x0032,  # 0x0014: invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    0x106e, 0x9ac6, 0x0002,  # 0x0017: invoke-virtual {v2}, Ljava/io/File;->exists()Z
    0x020a,                  # 0x001a: move-result v2
    0x0238, 0x0006,          # 0x001b: if-eqz v2, 0x0021 (:not_exists)
    0x206e, 0x6c4b, 0x0010,  # 0x001d: invoke-virtual {v0, v1}, Lcom/transsion/filemanagerx/ui/storagefile/StorageFileViewModel;->Y(Lcom/android/datastore/model/FileInfoModel;)V
    0x000e,                  # 0x0020: return-void
    # :not_exists (0x0021)
    0x0162, 0x53f7,          # 0x0021: sget-object v1, Lk8/d$a;->a:Lk8/d$a;
    0x0212,                  # 0x0023: const/4 v2, 0x0
    0x2312,                  # 0x0024: const/4 v3, 0x2
    0x0412,                  # 0x0025: const/4 v4, 0x0
    0x5471, 0x6a55, 0x3210,  # 0x0026: invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/filemanagerx/ui/base/CustomViewModel;->M(Lcom/transsion/filemanagerx/ui/base/CustomViewModel;Lk8/d;ZILjava/lang/Object;)V
    0x106e, 0x6c46, 0x0000,  # 0x0029: invoke-virtual {v0}, Lcom/transsion/filemanagerx/ui/storagefile/StorageFileViewModel;->T()Landroidx/lifecycle/c0;
    0x000c,                  # 0x002c: move-result-object v0
    0x0162, 0x4adc,          # 0x002d: sget-object v1, Le8/f;->t:Le8/f$a;
    0x106e, 0x8488, 0x0001,  # 0x002f: invoke-virtual {v1}, Le8/f$a;->d()Lcom/android/datastore/model/FileInfoModel;
    0x010c,                  # 0x0032: move-result-object v1
    0x206e, 0x2f3d, 0x0010,  # 0x0033: invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->l(Ljava/lang/Object;)V
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    # :return (0x003b)
    0x000e                   # 0x003b: return-void
]
assert len(insns_5) == 60, f"Actual len5: {len(insns_5)}"
for i, w in enumerate(insns_5):
    struct.pack_into('<H', dex, code_off_5 + 16 + 2*i, w)
struct.pack_into('<I', dex, code_off_5 + 8, 0)

# Recompute SHA-1 signature (bytes 12..32) and Adler32 checksum (bytes 8..12)
sha1 = hashlib.sha1(dex[32:]).digest()
dex[12:32] = sha1
adler = zlib.adler32(dex[12:]) & 0xffffffff
struct.pack_into('<I', dex, 8, adler)
print(f"Patched classes.dex: adler32=0x{adler:08x}, sha1={sha1.hex()}")

with zipfile.ZipFile(src_apk, 'r') as zin:
    with zipfile.ZipFile(dst_apk, 'w') as zout:
        for info in zin.infolist():
            data = bytes(dex) if info.filename == 'classes.dex' else zin.read(info.filename)
            new_info = zipfile.ZipInfo(info.filename, date_time=info.date_time)
            new_info.compress_type = info.compress_type
            new_info.external_attr = info.external_attr
            new_info.create_system = info.create_system
            if info.compress_type == zipfile.ZIP_STORED:
                new_info.extra = b''
                offset = zout.fp.tell()
                header_len = 30 + len(new_info.filename.encode('utf-8'))
                pad = (4 - ((offset + header_len) % 4)) % 4
                new_info.extra = b'\x00' * pad
            zout.writestr(new_info, data)

print("Successfully created", dst_apk)

hv_src = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\HTMLViewer.apk"
hv_dex_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\hv_out\classes.dex"
hv_dst = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\HTMLViewer_patched.apk"
with open(hv_dex_path, 'rb') as f:
    hv_dex = f.read()

with zipfile.ZipFile(hv_src, 'r') as zin:
    with zipfile.ZipFile(hv_dst, 'w') as zout:
        for info in zin.infolist():
            data = hv_dex if info.filename == 'classes.dex' else zin.read(info.filename)
            new_info = zipfile.ZipInfo(info.filename, date_time=info.date_time)
            new_info.compress_type = info.compress_type
            new_info.external_attr = info.external_attr
            new_info.create_system = info.create_system
            if info.compress_type == zipfile.ZIP_STORED:
                new_info.extra = b''
                offset = zout.fp.tell()
                header_len = 30 + len(new_info.filename.encode('utf-8'))
                pad = (4 - ((offset + header_len) % 4)) % 4
                new_info.extra = b'\x00' * pad
            zout.writestr(new_info, data)

print("Successfully created", hv_dst)
