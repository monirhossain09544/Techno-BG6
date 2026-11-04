import zipfile
import struct

from inspect_services_spoof import dump_dex_matches

srv_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\services.jar"
dump_dex_matches(srv_path, 'classes.dex', ['isMock', 'setMock'])
dump_dex_matches(srv_path, 'classes2.dex', ['isMock', 'setMock', 'MockLocation', 'MockableLocation'])
