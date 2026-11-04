import sys
sys.path.insert(0, r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch")
from disasm_probe_relocs import dump_ko_funcs

dump_ko_funcs(
    r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko",
    ["cts_firmware_upgrade_work", "cts_request_firmware", "cts_request_driver_builtin_firmware"]
)
