import ctypes
from ctypes import wintypes
import time

kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
kernel32.GetCurrentProcess.restype = wintypes.HANDLE
kernel32.OpenProcess.argtypes = [wintypes.DWORD, wintypes.BOOL, wintypes.DWORD]
kernel32.OpenProcess.restype = wintypes.HANDLE
kernel32.DuplicateHandle.argtypes = [
    wintypes.HANDLE, wintypes.HANDLE, wintypes.HANDLE,
    ctypes.POINTER(wintypes.HANDLE), wintypes.DWORD, wintypes.BOOL, wintypes.DWORD
]
kernel32.DuplicateHandle.restype = wintypes.BOOL
kernel32.WriteFile.argtypes = [
    wintypes.HANDLE, ctypes.c_void_p, wintypes.DWORD,
    ctypes.POINTER(wintypes.DWORD), ctypes.c_void_p
]
kernel32.WriteFile.restype = wintypes.BOOL
kernel32.CloseHandle.argtypes = [wintypes.HANDLE]

PROCESS_DUP_HANDLE = 0x0040
DUPLICATE_SAME_ACCESS = 0x00000002

hProc = kernel32.OpenProcess(PROCESS_DUP_HANDLE, False, 4836)
assert hProc, f"OpenProcess failed: {ctypes.get_last_error()}"

dup = wintypes.HANDLE()
ok = kernel32.DuplicateHandle(hProc, wintypes.HANDLE(0x104), kernel32.GetCurrentProcess(), ctypes.byref(dup), 0, False, DUPLICATE_SAME_ACCESS)
assert ok, f"DuplicateHandle failed: {ctypes.get_last_error()}"

cmd = b"w super super.img e metadata reset\n"
written = wintypes.DWORD()
ok = kernel32.WriteFile(dup, cmd, len(cmd), ctypes.byref(written), None)
print(f"WriteFile ok={ok}, written={written.value} bytes: {cmd!r}")

kernel32.CloseHandle(dup)
kernel32.CloseHandle(hProc)
