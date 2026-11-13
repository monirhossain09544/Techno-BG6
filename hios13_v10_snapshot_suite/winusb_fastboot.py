import ctypes
from ctypes import wintypes
import time

setupapi = ctypes.WinDLL("setupapi.dll", use_last_error=True)
winusb = ctypes.WinDLL("winusb.dll", use_last_error=True)
kernel32 = ctypes.WinDLL("kernel32.dll", use_last_error=True)


class GUID(ctypes.Structure):
    _fields_ = [
        ("Data1", wintypes.DWORD),
        ("Data2", wintypes.WORD),
        ("Data3", wintypes.WORD),
        ("Data4", ctypes.c_ubyte * 8),
    ]


# Standard Google Android USB Class GUID {F72FE0D4-CBCB-407D-8814-9ED673D0DD6B}
ANDROID_USB_GUID = GUID(
    0xF72FE0D4,
    0xCBCB,
    0x407D,
    (ctypes.c_ubyte * 8)(0x88, 0x14, 0x9E, 0xD6, 0x73, 0xD0, 0xDD, 0x6B),
)


class SP_DEVICE_INTERFACE_DATA(ctypes.Structure):
    _fields_ = [
        ("cbSize", wintypes.DWORD),
        ("InterfaceClassGuid", GUID),
        ("Flags", wintypes.DWORD),
        ("Reserved", ctypes.c_ulonglong),
    ]


class USB_INTERFACE_DESCRIPTOR(ctypes.Structure):
    _pack_ = 1
    _fields_ = [
        ("bLength", ctypes.c_ubyte),
        ("bDescriptorType", ctypes.c_ubyte),
        ("bInterfaceNumber", ctypes.c_ubyte),
        ("bAlternateSetting", ctypes.c_ubyte),
        ("bNumEndpoints", ctypes.c_ubyte),
        ("bInterfaceClass", ctypes.c_ubyte),
        ("bInterfaceSubClass", ctypes.c_ubyte),
        ("bInterfaceProtocol", ctypes.c_ubyte),
        ("iInterface", ctypes.c_ubyte),
    ]


class WINUSB_PIPE_INFORMATION(ctypes.Structure):
    _fields_ = [
        ("PipeType", ctypes.c_int),
        ("PipeId", ctypes.c_ubyte),
        ("MaximumPacketSize", wintypes.USHORT),
        ("Interval", ctypes.c_ubyte),
    ]


DIGCF_PRESENT = 0x02
DIGCF_DEVICEINTERFACE = 0x10
GENERIC_READ = 0x80000000
GENERIC_WRITE = 0x40000000
FILE_SHARE_READ = 0x01
FILE_SHARE_WRITE = 0x02
OPEN_EXISTING = 3
FILE_FLAG_OVERLAPPED = 0x40000000
PIPE_TRANSFER_TIMEOUT = 0x03

setupapi.SetupDiGetClassDevsW.argtypes = [ctypes.POINTER(GUID), wintypes.LPCWSTR, wintypes.HWND, wintypes.DWORD]
setupapi.SetupDiGetClassDevsW.restype = ctypes.c_void_p

setupapi.SetupDiEnumDeviceInterfaces.argtypes = [
    ctypes.c_void_p,
    ctypes.c_void_p,
    ctypes.POINTER(GUID),
    wintypes.DWORD,
    ctypes.POINTER(SP_DEVICE_INTERFACE_DATA),
]
setupapi.SetupDiEnumDeviceInterfaces.restype = wintypes.BOOL

setupapi.SetupDiGetDeviceInterfaceDetailW.argtypes = [
    ctypes.c_void_p,
    ctypes.POINTER(SP_DEVICE_INTERFACE_DATA),
    ctypes.c_void_p,
    wintypes.DWORD,
    ctypes.POINTER(wintypes.DWORD),
    ctypes.c_void_p,
]
setupapi.SetupDiGetDeviceInterfaceDetailW.restype = wintypes.BOOL

setupapi.SetupDiDestroyDeviceInfoList.argtypes = [ctypes.c_void_p]

kernel32.CreateFileW.argtypes = [
    wintypes.LPCWSTR,
    wintypes.DWORD,
    wintypes.DWORD,
    ctypes.c_void_p,
    wintypes.DWORD,
    wintypes.DWORD,
    ctypes.c_void_p,
]
kernel32.CreateFileW.restype = ctypes.c_void_p
kernel32.CloseHandle.argtypes = [ctypes.c_void_p]

winusb.WinUsb_Initialize.argtypes = [ctypes.c_void_p, ctypes.POINTER(ctypes.c_void_p)]
winusb.WinUsb_Initialize.restype = wintypes.BOOL
winusb.WinUsb_Free.argtypes = [ctypes.c_void_p]
winusb.WinUsb_QueryInterfaceSettings.argtypes = [
    ctypes.c_void_p,
    ctypes.c_ubyte,
    ctypes.POINTER(USB_INTERFACE_DESCRIPTOR),
]
winusb.WinUsb_QueryInterfaceSettings.restype = wintypes.BOOL
winusb.WinUsb_QueryPipe.argtypes = [
    ctypes.c_void_p,
    ctypes.c_ubyte,
    ctypes.c_ubyte,
    ctypes.POINTER(WINUSB_PIPE_INFORMATION),
]
winusb.WinUsb_QueryPipe.restype = wintypes.BOOL
winusb.WinUsb_SetPipePolicy.argtypes = [
    ctypes.c_void_p,
    ctypes.c_ubyte,
    wintypes.ULONG,
    wintypes.ULONG,
    ctypes.c_void_p,
]
winusb.WinUsb_SetPipePolicy.restype = wintypes.BOOL
winusb.WinUsb_WritePipe.argtypes = [
    ctypes.c_void_p,
    ctypes.c_ubyte,
    ctypes.c_void_p,
    wintypes.ULONG,
    ctypes.POINTER(wintypes.ULONG),
    ctypes.c_void_p,
]
winusb.WinUsb_WritePipe.restype = wintypes.BOOL
winusb.WinUsb_ReadPipe.argtypes = [
    ctypes.c_void_p,
    ctypes.c_ubyte,
    ctypes.c_void_p,
    wintypes.ULONG,
    ctypes.POINTER(wintypes.ULONG),
    ctypes.c_void_p,
]
winusb.WinUsb_ReadPipe.restype = wintypes.BOOL


def list_android_usb_paths():
    paths = []
    hdev = setupapi.SetupDiGetClassDevsW(
        ctypes.byref(ANDROID_USB_GUID), None, None, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE
    )
    if hdev == ctypes.c_void_p(-1).value or not hdev:
        return paths
    try:
        idx = 0
        while True:
            did = SP_DEVICE_INTERFACE_DATA()
            did.cbSize = ctypes.sizeof(SP_DEVICE_INTERFACE_DATA)
            if not setupapi.SetupDiEnumDeviceInterfaces(hdev, None, ctypes.byref(ANDROID_USB_GUID), idx, ctypes.byref(did)):
                break
            req = wintypes.DWORD(0)
            setupapi.SetupDiGetDeviceInterfaceDetailW(hdev, ctypes.byref(did), None, 0, ctypes.byref(req), None)
            buf = ctypes.create_string_buffer(req.value)
            # On 64-bit Windows cbSize of SP_DEVICE_INTERFACE_DETAIL_DATA_W is 8
            ctypes.cast(buf, ctypes.POINTER(wintypes.DWORD))[0] = 8
            if setupapi.SetupDiGetDeviceInterfaceDetailW(hdev, ctypes.byref(did), buf, req.value, None, None):
                path = ctypes.wstring_at(ctypes.addressof(buf) + 4)
                paths.append(path)
            idx += 1
    finally:
        setupapi.SetupDiDestroyDeviceInfoList(hdev)
    return paths


def send_fastboot_raw(cmd_str, timeout_ms=300000):
    paths = list_android_usb_paths()
    if not paths:
        raise RuntimeError("No Android WinUSB interface found!")
    for path in paths:
        fh = kernel32.CreateFileW(
            path,
            GENERIC_READ | GENERIC_WRITE,
            FILE_SHARE_READ | FILE_SHARE_WRITE,
            None,
            OPEN_EXISTING,
            FILE_FLAG_OVERLAPPED,
            None,
        )
        if fh == ctypes.c_void_p(-1).value or not fh:
            continue
        wh = ctypes.c_void_p()
        if not winusb.WinUsb_Initialize(fh, ctypes.byref(wh)):
            kernel32.CloseHandle(fh)
            continue
        try:
            idesc = USB_INTERFACE_DESCRIPTOR()
            if not winusb.WinUsb_QueryInterfaceSettings(wh, 0, ctypes.byref(idesc)):
                continue
            # Fastboot interface is Class 0xFF, SubClass 0x42, Protocol 0x03
            print(
                f"Opened USB {path}: Class=0x{idesc.bInterfaceClass:02x} Sub=0x{idesc.bInterfaceSubClass:02x} Proto=0x{idesc.bInterfaceProtocol:02x}",
                flush=True,
            )
            if not (idesc.bInterfaceClass == 0xFF and idesc.bInterfaceSubClass == 0x42 and idesc.bInterfaceProtocol == 0x03):
                continue
            ep_in, ep_out = None, None
            for p_idx in range(idesc.bNumEndpoints):
                pinfo = WINUSB_PIPE_INFORMATION()
                if winusb.WinUsb_QueryPipe(wh, 0, p_idx, ctypes.byref(pinfo)):
                    if pinfo.PipeType == 2:  # UsbdPipeTypeBulk
                        if pinfo.PipeId & 0x80:
                            ep_in = pinfo.PipeId
                        else:
                            ep_out = pinfo.PipeId
            assert ep_in is not None and ep_out is not None, "Missing bulk endpoints"
            t_out = wintypes.ULONG(10000)
            t_in = wintypes.ULONG(timeout_ms)
            winusb.WinUsb_SetPipePolicy(wh, ep_out, PIPE_TRANSFER_TIMEOUT, ctypes.sizeof(t_out), ctypes.byref(t_out))
            winusb.WinUsb_SetPipePolicy(wh, ep_in, PIPE_TRANSFER_TIMEOUT, ctypes.sizeof(t_in), ctypes.byref(t_in))

            payload = cmd_str.encode("utf-8")
            written = wintypes.ULONG(0)
            if not winusb.WinUsb_WritePipe(wh, ep_out, payload, len(payload), ctypes.byref(written), None):
                raise RuntimeError(f"WinUsb_WritePipe failed: {ctypes.get_last_error()}")
            print(f">>> USB Fastboot TX ({written.value}B): {cmd_str}", flush=True)

            rbuf = ctypes.create_string_buffer(512)
            while True:
                nread = wintypes.ULONG(0)
                if not winusb.WinUsb_ReadPipe(wh, ep_in, rbuf, 512, ctypes.byref(nread), None):
                    err = ctypes.get_last_error()
                    raise RuntimeError(f"WinUsb_ReadPipe failed/timed out (winerr={err})")
                resp = rbuf.raw[: nread.value].decode("utf-8", errors="replace")
                if resp.startswith("INFO"):
                    print(f"  (bootloader) {resp[4:]}", flush=True)
                elif resp.startswith("TEXT"):
                    print(f"  (text) {resp[4:]}", flush=True)
                elif resp.startswith("OKAY"):
                    print(f"  OKAY: {resp[4:]}", flush=True)
                    return True, resp[4:]
                elif resp.startswith("FAIL"):
                    print(f"  FAIL: {resp[4:]}", flush=True)
                    return False, resp[4:]
                else:
                    print(f"  RAW: {resp}", flush=True)
        finally:
            winusb.WinUsb_Free(wh)
            kernel32.CloseHandle(fh)
    raise RuntimeError("No Fastboot (FF/42/03) WinUSB interface found!")


if __name__ == "__main__":
    print("Discovered Android WinUSB paths:", list_android_usb_paths())
