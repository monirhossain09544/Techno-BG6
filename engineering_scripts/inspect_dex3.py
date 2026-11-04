import zipfile, struct, sys
from inspect_dex_methods import load_dex

d3, s3, t3, m3, f3, dump3 = load_dex('classes3.dex')
print("=== classes3 AppInfoDashboardFragment.onAttach decoded ===")
for t_idx in [0x0294, 0x0296, 0x0298, 0x029a, 0x029c, 0x029d, 0x02a0, 0x02a1, 0x02a2, 0x02a3, 0x02a4, 0x02ac, 0x02ae, 0x02b0, 0x02b2, 0x02b5, 0x02b7, 0x02bc]:
    print(f"  type {hex(t_idx)}: {t3(t_idx)}")
for m_idx in [0x08c7, 0x088e, 0x088b, 0x088f, 0x0891, 0x0892, 0x0893, 0x0894, 0x089b, 0x089d, 0x08a1, 0x08a2, 0x08a8, 0x08b5, 0x0945]:
    print(f"  meth {hex(m_idx)}: {m3(m_idx)}")

print("\n=== classes3 AppInfoPreferenceControllerBase ===")
dump3('Lcom/transsion/settings/applications/appinfo/AppInfoPreferenceControllerBase;')
