import ctypes
from ctypes import wintypes

kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
ntdll = ctypes.WinDLL("ntdll", use_last_error=True)

kernel32.GetCurrentProcess.restype = wintypes.HANDLE
kernel32.OpenProcess.argtypes = [wintypes.DWORD, wintypes.BOOL, wintypes.DWORD]
kernel32.OpenProcess.restype = wintypes.HANDLE
kernel32.DuplicateHandle.argtypes = [
    wintypes.HANDLE, wintypes.HANDLE, wintypes.HANDLE,
    ctypes.POINTER(wintypes.HANDLE), wintypes.DWORD, wintypes.BOOL, wintypes.DWORD
]
kernel32.DuplicateHandle.restype = wintypes.BOOL
kernel32.CloseHandle.argtypes = [wintypes.HANDLE]

PROCESS_DUP_HANDLE = 0x0040
DUPLICATE_SAME_ACCESS = 0x00000002
ObjectBasicInformation = 0

class PUBLIC_OBJECT_BASIC_INFORMATION(ctypes.Structure):
    _fields_ = [
        ("Attributes", wintypes.ULONG),
        ("GrantedAccess", wintypes.ULONG),
        ("HandleCount", wintypes.ULONG),
        ("PointerCount", wintypes.ULONG),
        ("Reserved", wintypes.ULONG * 10),
    ]

for pid in (4836, 6404):
    print(f"=== PID {pid} ===")
    hProc = kernel32.OpenProcess(PROCESS_DUP_HANDLE, False, pid)
    curProc = kernel32.GetCurrentProcess()
    for h in range(4, 0x300, 4):
        dup = wintypes.HANDLE()
        if kernel32.DuplicateHandle(hProc, wintypes.HANDLE(h), curProc, ctypes.byref(dup), 0, False, DUPLICATE_SAME_ACCESS):
            obi = PUBLIC_OBJECT_BASIC_INFORMATION()
            if ntdll.NtQueryObject(dup, ObjectBasicInformation, ctypes.byref(obi), ctypes.sizeof(obi), None) == 0:
                if obi.GrantedAccess in (0x120196, 0x120189, 0x12019f):
                    print(f"  Handle 0x{h:x}: access=0x{obi.GrantedAccess:x} handles={obi.HandleCount} ptrs={obi.PointerCount}")
            kernel32.CloseHandle(dup)
    kernel32.CloseHandle(hProc)
