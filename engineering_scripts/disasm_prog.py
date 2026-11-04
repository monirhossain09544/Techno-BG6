import subprocess, glob
# Find llvm-objdump in Android SDK NDK
ndk_dumps = glob.glob(r"C:\Users\Monir\AppData\Local\Android\Sdk\ndk\*\toolchains\llvm\prebuilt\windows-x86_64\bin\llvm-objdump.exe")
print("Found:", ndk_dumps)
if ndk_dumps:
    out = subprocess.check_output([ndk_dumps[0], "-d", "--start-address=0x1e220", "--stop-address=0x1e550", r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_icnl99xx.ko"]).decode("utf-8", errors="ignore")
    print(out)