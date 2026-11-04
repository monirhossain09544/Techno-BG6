import sys, subprocess
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"

def sh(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace").stdout

print("=== 1. CHECK /sdcard FOR ANY VCF / BACKUP FILES ===")
print(sh(f'{ADB} shell "find /sdcard -iname \'*.vcf\' -o -iname \'*contact*\' 2>/dev/null"'))

REMOTE_PY = r"""import os, subprocess, shutil

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"

# Part A: Audit all remaining non-AOSP column occurrences in SmartCaller
print("=== PART A: AUDIT ALL SMALI PROJECTIONS / SELECTIONS ===")
files_to_check = [
    ("smali_classes3.dex/fx.smali", [4295]),
    ("smali_classes.dex/com/android/contacts/list/l.smali", [2060]),
    ("smali_classes.dex/com/android/contacts/list/g.smali", [246, 500, 511]),
    ("smali_classes.dex/com/android/contacts/editor/a.smali", [3286, 3295]),
    ("smali_classes2.dex/cl0.smali", [93]),
    ("smali_classes2.dex/cy.smali", [585, 739]),
    ("smali_classes2.dex/pz2.smali", [645, 672, 1002]),
]
for rel, lines_list in files_to_check:
    full = f"{WORK}/{rel}"
    if os.path.exists(full):
        ls = open(full).readlines()
        for ln in lines_list:
            s, e = max(0, ln - 18), min(len(ls), ln + 22)
            print(f"--- {rel} @ {ln} ---")
            print("".join(f"{i+1}: {ls[i]}" for i in range(s, e)))

# Also check Lsz;->a definition! What is Lsz;->a?!
for d in ["smali_classes.dex", "smali_classes2.dex", "smali_classes3.dex"]:
    if os.path.exists(f"{WORK}/{d}/sz.smali"):
        print(f"=== FOUND {d}/sz.smali ===")
        print(open(f"{WORK}/{d}/sz.smali").read()[:2500])

# Part B: Build tiny platform-signed SimProbe.apk to read raw 3F007F10/6F3A + 7FFF/5F3A + SimPhonebook + IccProvider
PROBE = "/nvme0n1-disk/infinity_x/simprobe_work"
shutil.rmtree(PROBE, ignore_errors=True)
os.makedirs(f"{PROBE}/src/com/transsion/simprobe", exist_ok=True)
os.makedirs(f"{PROBE}/res/values", exist_ok=True)

open(f"{PROBE}/AndroidManifest.xml", "w").write('''<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.transsion.simprobe"
    android:sharedUserId="android.uid.system">
    <uses-permission android:name="android.permission.MODIFY_PHONE_STATE"/>
    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
    <uses-permission android:name="android.permission.READ_PRIVILEGED_PHONE_STATE"/>
    <uses-permission android:name="android.permission.READ_CONTACTS"/>
    <uses-permission android:name="android.permission.WRITE_CONTACTS"/>
    <application android:label="SimProbe">
        <receiver android:name=".ProbeReceiver" android:exported="true"/>
    </application>
</manifest>
''')

open(f"{PROBE}/res/values/strings.xml", "w").write('<resources><string name="app_name">SimProbe</string></resources>')

open(f"{PROBE}/src/com/transsion/simprobe/ProbeReceiver.java", "w").write(r'''package com.transsion.simprobe;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.IccOpenLogicalChannelResponse;
import android.util.Log;
import java.util.List;

public class ProbeReceiver extends BroadcastReceiver {
    private static String hexToAsciiOrHex(String hex) {
        if (hex == null) return "null";
        boolean allFF = true;
        for (int i = 0; i < hex.length(); i++) {
            char c = hex.charAt(i);
            if (c != 'f' && c != 'F') { allFF = false; break; }
        }
        if (allFF) return null;
        return hex;
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        new Thread(() -> {
            try {
                SubscriptionManager sm = context.getSystemService(SubscriptionManager.class);
                TelephonyManager baseTm = context.getSystemService(TelephonyManager.class);
                List<SubscriptionInfo> subs = sm.getActiveSubscriptionInfoList();
                Log.i("SIMPROBE", "Active subs count: " + (subs == null ? -1 : subs.size()));
                if (subs == null) return;
                for (SubscriptionInfo si : subs) {
                    int subId = si.getSubscriptionId();
                    int slot = si.getSimSlotIndex();
                    Log.i("SIMPROBE", "=== Probing subId=" + subId + " slot=" + slot + " carrier=" + si.getDisplayName() + " ===");
                    TelephonyManager tm = baseTm.createForSubscriptionId(subId);

                    // 1. Read GET_RESPONSE (0xC0) on 3F007F10 / 6F3A (GSM DF_TELECOM EF_ADN)
                    byte[] resp = tm.iccExchangeSimIO(0x6F3A, 0xC0, 0, 0, 15, "3F007F10");
                    Log.i("SIMPROBE", "6F3A GET_RESPONSE len=" + (resp == null ? -1 : resp.length));
                    for (int recSz : new int[]{28, 30, 32, 34, 26, 24}) {
                        byte[] test1 = tm.iccExchangeSimIO(0x6F3A, 0xB2, 1, 4, recSz, "3F007F10");
                        if (test1 != null && test1.length >= recSz) {
                            Log.i("SIMPROBE", "3F007F10/6F3A works with recSz=" + recSz + " len=" + test1.length);
                            int nonEmpty = 0;
                            for (int r = 1; r <= 250; r++) {
                                byte[] data = tm.iccExchangeSimIO(0x6F3A, 0xB2, r, 4, recSz, "3F007F10");
                                if (data == null || data.length < recSz) break;
                                boolean empty = true;
                                for (int b = 0; b < recSz; b++) {
                                    if ((data[b] & 0xFF) != 0xFF) { empty = false; break; }
                                }
                                if (!empty) {
                                    nonEmpty++;
                                    StringBuilder sb = new StringBuilder();
                                    StringBuilder ascii = new StringBuilder();
                                    for (int b = 0; b < recSz; b++) {
                                        int v = data[b] & 0xFF;
                                        sb.append(String.format("%02X", v));
                                        if (b < recSz - 14 && v >= 32 && v < 127) ascii.append((char)v);
                                    }
                                    Log.i("SIMPROBE", "sub=" + subId + " 7F10/6F3A rec#" + r + " ascii='" + ascii + "' hex=" + sb);
                                }
                            }
                            Log.i("SIMPROBE", "sub=" + subId + " 3F007F10/6F3A TOTAL non-empty=" + nonEmpty);
                            break;
                        }
                    }

                    // 2. Also check EF_PBR (3F007FFF5F3A / 4F30) records!
                    for (int pbrSz = 10; pbrSz <= 60; pbrSz += 2) {
                        byte[] pbr1 = tm.iccExchangeSimIO(0x4F30, 0xB2, 1, 4, pbrSz, "3F007FFF5F3A");
                        if (pbr1 != null && pbr1.length >= pbrSz) {
                            for (int r = 1; r <= 5; r++) {
                                byte[] pd = tm.iccExchangeSimIO(0x4F30, 0xB2, r, 4, pbrSz, "3F007FFF5F3A");
                                if (pd == null || pd.length < pbrSz) break;
                                StringBuilder sb = new StringBuilder();
                                for (int b = 0; b < pbrSz; b++) sb.append(String.format("%02X", pd[b] & 0xFF));
                                Log.i("SIMPROBE", "sub=" + subId + " PBR rec#" + r + " hex=" + sb);
                            }
                            break;
                        }
                    }
                }
                Log.i("SIMPROBE", "=== PROBE COMPLETE ===");
            } catch (Throwable t) {
                Log.e("SIMPROBE", "Error in probe", t);
            }
        }).start();
    }
}
''')

aapt2 = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts -name aapt2 | head -n 1", shell=True).decode().strip()
javac = subprocess.check_output("which javac", shell=True).decode().strip()
d8 = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts -name d8 | head -n 1", shell=True).decode().strip()
zipalign = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts -name zipalign | head -n 1", shell=True).decode().strip()
apksigner = subprocess.check_output("find /nvme0n1-disk/shunno_os/out /nvme0n1-disk/shunno_os/prebuilts -name apksigner 2>/dev/null | head -n 1", shell=True).decode().strip()
android_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts/sdk -name android.jar | sort -V | tail -n 1", shell=True).decode().strip()
pk8 = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8"
pem = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem"

subprocess.check_call(f"{aapt2} compile --dir {PROBE}/res -o {PROBE}/res.zip", shell=True)
subprocess.check_call(f"{aapt2} link -I {android_jar} --manifest {PROBE}/AndroidManifest.xml -o {PROBE}/unaligned.apk {PROBE}/res.zip --java {PROBE}/src", shell=True)
os.makedirs(f"{PROBE}/classes", exist_ok=True)
subprocess.check_call(f"{javac} --release 11 -cp {android_jar} -d {PROBE}/classes {PROBE}/src/com/transsion/simprobe/*.java", shell=True)
subprocess.check_call(f"{d8} --lib {android_jar} --output {PROBE} {PROBE}/classes/com/transsion/simprobe/*.class", shell=True)
subprocess.check_call(f"cd {PROBE} && zip -q -0 unaligned.apk classes.dex", shell=True)
subprocess.check_call(f"{zipalign} -f 4 {PROBE}/unaligned.apk {PROBE}/aligned.apk", shell=True)
subprocess.check_call(f"{apksigner} sign --key {pk8} --cert {pem} --out {PROBE}/SimProbe.apk {PROBE}/aligned.apk", shell=True)
print("BUILT SimProbe.apk:", os.path.getsize(f"{PROBE}/SimProbe.apk"))
"""

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=120)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode("utf-8", errors="replace"))
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)

sftp = c.open_sftp()
local_probe = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SimProbe.apk"
sftp.get("/nvme0n1-disk/infinity_x/simprobe_work/SimProbe.apk", local_probe)
sftp.close()
c.close()

print("=== 2. RUNNING SimProbe ON PHONE ===")
print("Install:", sh(f"{ADB} install -r -g {local_probe}"))
sh(f"{ADB} logcat -c")
print("Broadcast:", sh(f"{ADB} shell am broadcast -n com.transsion.simprobe/.ProbeReceiver"))
import time
for _ in range(12):
    time.sleep(1.5)
    logs = sh(f"{ADB} logcat -d -s SIMPROBE:V")
    if "PROBE COMPLETE" in logs or "Error in probe" in logs:
        break
print(sh(f"{ADB} logcat -d -s SIMPROBE:V"))
sh(f"{ADB} uninstall com.transsion.simprobe")
