import sys, subprocess, time, re, xml.etree.ElementTree as ET, zlib
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"
local_sc = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\SmartCaller_V6_A16.apk"

def sh(cmd):
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace")
    return (p.stdout + "\n" + p.stderr).strip()

REMOTE_PY = r"""import os, subprocess, shutil

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
SRC_APK = "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
BASE1 = f"{WORK}/smali_classes.dex"
BASE2 = f"{WORK}/smali_classes2.dex"

# 1. Backup & patch hp0.smali for Android 16 StorageVolume API
hp0_path = f"{BASE2}/hp0.smali"
hp0_bak = hp0_path + ".orig"
if not os.path.exists(hp0_bak):
    shutil.copy2(hp0_path, hp0_bak)
else:
    shutil.copy2(hp0_bak, hp0_path)

hp0 = open(hp0_path).read()

old_hp0_1 = '''    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {v7}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7'''

new_hp0_1 = '''    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;
    move-result-object v7
    if-eqz v7, :cond_unmounted_vol1
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    invoke-static {v7}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;
    move-result-object v7
    goto :goto_vol1_done
    :cond_unmounted_vol1
    const-string v6, ""
    const-string v7, "unmounted"
    :goto_vol1_done'''

assert old_hp0_1 in hp0, "old_hp0_1 not found!"
hp0 = hp0.replace(old_hp0_1, new_hp0_1, 1)

old_hp0_2 = '''    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5'''

new_hp0_2 = '''    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;
    move-result-object v5
    if-eqz v5, :cond_unmounted_vol2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5
    goto :goto_vol2_done
    :cond_unmounted_vol2
    const-string v5, ""
    :goto_vol2_done'''

assert old_hp0_2 in hp0, "old_hp0_2 not found!"
hp0 = hp0.replace(old_hp0_2, new_hp0_2, 1)
open(hp0_path, "w").write(hp0)

# 2. Compile SimAutoSyncHelper.java -> DEX -> baksmali -> BASE2/com/transsion/contacts/SimAutoSyncHelper.smali
HELPER_DIR = f"{WORK}/sim_helper_build"
shutil.rmtree(HELPER_DIR, ignore_errors=True)
os.makedirs(f"{HELPER_DIR}/src/com/transsion/contacts", exist_ok=True)
os.makedirs(f"{HELPER_DIR}/classes", exist_ok=True)

open(f"{HELPER_DIR}/src/com/transsion/contacts/SimAutoSyncHelper.java", "w").write(r'''package com.transsion.contacts;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class SimAutoSyncHelper {
    private static final String TAG = "SIM_AUTOSYNC";
    private static final AtomicBoolean RUNNING = new AtomicBoolean(false);
    private static volatile long lastSyncMs = 0L;

    private static String normNum(String s) {
        if (s == null) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if ((c >= '0' && c <= '9') || c == '+' || c == '*' || c == '#') {
                sb.append(c);
            }
        }
        String clean = sb.toString();
        if (clean.startsWith("+880") && clean.length() > 6) {
            return clean.substring(3);
        }
        if (clean.startsWith("880") && clean.length() > 5) {
            return clean.substring(2);
        }
        return clean;
    }

    public static void syncAsync(Context context) {
        if (context == null) return;
        long now = System.currentTimeMillis();
        if (now - lastSyncMs < 15000L) return;
        if (!RUNNING.compareAndSet(false, true)) return;
        final Context appCtx = context.getApplicationContext();
        new Thread(() -> {
            try {
                doSync(appCtx);
                lastSyncMs = System.currentTimeMillis();
            } catch (Throwable t) {
                Log.e(TAG, "Auto SIM sync error", t);
            } finally {
                RUNNING.set(false);
            }
        }, "SimAutoSync").start();
    }

    private static void readUriIntoMap(ContentResolver cr, Uri uri, String nameCol, String numCol, Map<String, String[]> found, String tagLabel) {
        Cursor c = null;
        try {
            c = cr.query(uri, null, null, null, null);
            if (c == null) return;
            int idxName = c.getColumnIndex(nameCol);
            int idxNum = c.getColumnIndex(numCol);
            if (idxName < 0) idxName = c.getColumnIndex("tag");
            if (idxNum < 0) idxNum = c.getColumnIndex("number");
            if (idxNum < 0) idxNum = c.getColumnIndex("phone_number");
            while (c.moveToNext()) {
                String name = idxName >= 0 ? c.getString(idxName) : "";
                String num = idxNum >= 0 ? c.getString(idxNum) : "";
                if (name != null) name = name.trim(); else name = "";
                if (num != null) num = num.trim(); else num = "";
                if (TextUtils.isEmpty(name) && TextUtils.isEmpty(num)) continue;
                String key = normNum(num) + "|" + name.toLowerCase();
                if (!found.containsKey(key)) {
                    found.put(key, new String[]{name, num, tagLabel});
                    Log.i(TAG, "Discovered SIM contact [" + tagLabel + "]: name=" + name + " num=" + num);
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "Query skipped for " + uri + ": " + t.getMessage());
        } finally {
            if (c != null) try { c.close(); } catch (Throwable ignored) {}
        }
    }

    private static void doSync(Context ctx) throws Exception {
        ContentResolver cr = ctx.getContentResolver();
        Map<String, String[]> simContacts = new LinkedHashMap<>();

        // 1. Collect active subIds
        List<Integer> subIds = new ArrayList<>();
        try {
            SubscriptionManager sm = ctx.getSystemService(SubscriptionManager.class);
            if (sm != null) {
                List<SubscriptionInfo> list = sm.getActiveSubscriptionInfoList();
                if (list != null) {
                    for (SubscriptionInfo si : list) {
                        if (!subIds.contains(si.getSubscriptionId())) {
                            subIds.add(si.getSubscriptionId());
                        }
                    }
                }
            }
        } catch (Throwable ignored) {}
        if (subIds.isEmpty()) {
            subIds.add(1);
            subIds.add(2);
        }

        // 2. Query Android 12+ SimPhonebookProvider AND legacy IccProvider ADN + PBR
        for (int subId : subIds) {
            readUriIntoMap(cr, Uri.parse("content://com.android.simphonebook/subid/" + subId + "/adn"), "name", "phone_number", simContacts, "SIM_sub" + subId);
            readUriIntoMap(cr, Uri.parse("content://icc/adn/subId/" + subId), "name", "number", simContacts, "ICC_ADN_sub" + subId);
            readUriIntoMap(cr, Uri.parse("content://icc/pbr/subId/" + subId), "name", "number", simContacts, "ICC_PBR_sub" + subId);
        }
        readUriIntoMap(cr, Uri.parse("content://icc/adn"), "name", "number", simContacts, "ICC_ADN_default");

        Log.i(TAG, "Total unique SIM contacts found across all SIMs: " + simContacts.size());
        if (simContacts.isEmpty()) return;

        // 3. Query existing phone numbers in ContactsProvider to prevent duplicates
        Set<String> existingNormNums = new HashSet<>();
        Set<String> existingNames = new HashSet<>();
        Cursor pc = null;
        try {
            pc = cr.query(
                ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                new String[]{ContactsContract.CommonDataKinds.Phone.NUMBER, ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME},
                null, null, null
            );
            if (pc != null) {
                while (pc.moveToNext()) {
                    String n = pc.getString(0);
                    String dn = pc.getString(1);
                    String nn = normNum(n);
                    if (!TextUtils.isEmpty(nn)) existingNormNums.add(nn);
                    if (!TextUtils.isEmpty(dn)) existingNames.add(dn.trim().toLowerCase());
                }
            }
        } catch (Throwable t) {
            Log.e(TAG, "Failed querying existing contacts", t);
            return;
        } finally {
            if (pc != null) try { pc.close(); } catch (Throwable ignored) {}
        }

        ArrayList<ContentProviderOperation> ops = new ArrayList<>();
        int imported = 0;
        for (String[] item : simContacts.values()) {
            String name = item[0];
            String num = item[1];
            String src = item[2];
            String nn = normNum(num);
            if (!TextUtils.isEmpty(nn) && existingNormNums.contains(nn)) {
                continue;
            }
            if (TextUtils.isEmpty(nn) && !TextUtils.isEmpty(name) && existingNames.contains(name.toLowerCase())) {
                continue;
            }

            int rawIdx = ops.size();
            ops.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI)
                .withValue(ContactsContract.RawContacts.ACCOUNT_TYPE, "sprd.com.android.account.phone")
                .withValue(ContactsContract.RawContacts.ACCOUNT_NAME, "Phone")
                .withValue(ContactsContract.RawContacts.SYNC1, src)
                .build());

            if (!TextUtils.isEmpty(name)) {
                ops.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI)
                    .withValueBackReference(ContactsContract.Data.RAW_CONTACT_ID, rawIdx)
                    .withValue(ContactsContract.Data.MIMETYPE, ContactsContract.CommonDataKinds.StructuredName.CONTENT_ITEM_TYPE)
                    .withValue(ContactsContract.CommonDataKinds.StructuredName.DISPLAY_NAME, name)
                    .build());
            }

            if (!TextUtils.isEmpty(num)) {
                ops.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI)
                    .withValueBackReference(ContactsContract.Data.RAW_CONTACT_ID, rawIdx)
                    .withValue(ContactsContract.Data.MIMETYPE, ContactsContract.CommonDataKinds.Phone.CONTENT_ITEM_TYPE)
                    .withValue(ContactsContract.CommonDataKinds.Phone.NUMBER, num)
                    .withValue(ContactsContract.CommonDataKinds.Phone.TYPE, ContactsContract.CommonDataKinds.Phone.TYPE_MOBILE)
                    .build());
                existingNormNums.add(nn);
            }
            imported++;
            if (ops.size() >= 300) {
                cr.applyBatch(ContactsContract.AUTHORITY, ops);
                ops.clear();
            }
        }
        if (!ops.isEmpty()) {
            cr.applyBatch(ContactsContract.AUTHORITY, ops);
        }
        Log.i(TAG, "Successfully auto-imported " + imported + " new SIM contacts into ContactsProvider!");
    }
}
''')

javac = subprocess.check_output("which javac", shell=True).decode().strip()
r8_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts/r8 -name r8.jar | head -n 1", shell=True).decode().strip()
android_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts/sdk -name android.jar | sort -V | tail -n 1", shell=True).decode().strip()
baksmali = subprocess.check_output("which baksmali", shell=True).decode().strip()

subprocess.check_call(f"{javac} --release 11 -cp {android_jar} -d {HELPER_DIR}/classes {HELPER_DIR}/src/com/transsion/contacts/SimAutoSyncHelper.java", shell=True)
subprocess.check_call(f"java -cp {r8_jar} com.android.tools.r8.D8 --min-api 29 --lib {android_jar} --output {HELPER_DIR} {HELPER_DIR}/classes/com/transsion/contacts/*.class", shell=True)
subprocess.check_call(f"{baksmali} d {HELPER_DIR}/classes.dex -o {BASE2}", shell=True)
print("Generated smali files:", os.listdir(f"{BASE2}/com/transsion/contacts"))

# 3. Hook PeopleActivity.onCreate AND DialtactsActivity / BaseApplication to call SimAutoSyncHelper.syncAsync(this)!
pa_path = f"{BASE1}/com/android/contacts/activities/PeopleActivity.smali"
pa_bak = pa_path + ".orig"
if not os.path.exists(pa_bak):
    shutil.copy2(pa_path, pa_bak)
else:
    shutil.copy2(pa_bak, pa_path)

pa = open(pa_path).read()
target_pa = '''.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    const-string v0, "onCreate"'''
repl_pa = '''.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Lcom/transsion/contacts/SimAutoSyncHelper;->syncAsync(Landroid/content/Context;)V

    .line 1
    const-string v0, "onCreate"'''
assert target_pa in pa, "PeopleActivity onCreate not found!"
pa = pa.replace(target_pa, repl_pa, 1)
open(pa_path, "w").write(pa)

# Also hook DialerApplication.onCreate so even opening Phone dialer syncs SIM contacts immediately!
da_path = f"{BASE1}/com/android/dialer/binary/common/DialerApplication.smali"
da_bak = da_path + ".orig"
if not os.path.exists(da_bak):
    shutil.copy2(da_path, da_bak)
else:
    shutil.copy2(da_bak, da_path)
da = open(da_path).read()
target_da = '''.method public onCreate()V'''
idx_da = da.find(target_da)
assert idx_da >= 0, "DialerApplication onCreate not found!"
end_reg = da.find("\n", da.find(".registers", idx_da))
da = da[:end_reg+1] + "\n    invoke-static {p0}, Lcom/transsion/contacts/SimAutoSyncHelper;->syncAsync(Landroid/content/Context;)V\n" + da[end_reg+1:]
open(da_path, "w").write(da)

print("Reassembling classes.dex and classes2.dex...")
subprocess.check_call(f"/usr/bin/smali a -a 34 {BASE1} -o {WORK}/out_dex/classes.dex", shell=True)
subprocess.check_call(f"/usr/bin/smali a -a 34 {BASE2} -o {WORK}/out_dex/classes2.dex", shell=True)

zipalign = "/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/zipalign"
apksigner = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/apksigner"
pk8 = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8"
pem = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem"

UNALIGNED = f"{WORK}/SmartCaller_unaligned.apk"
ALIGNED = f"{WORK}/SmartCaller_aligned.apk"
SIGNED = f"{WORK}/SmartCaller_V6_A16.apk"
shutil.copy2(SRC_APK, UNALIGNED)
subprocess.check_call(f"cd {WORK}/out_dex && zip -q -0 {UNALIGNED} classes.dex classes2.dex", shell=True)
subprocess.check_call(f"{zipalign} -f -p 4 {UNALIGNED} {ALIGNED}", shell=True)
subprocess.check_call(f"{apksigner} sign --key {pk8} --cert {pem} --out {SIGNED} {ALIGNED}", shell=True)
print("SIGNED SmartCaller_V6_A16.apk:", os.path.getsize(SIGNED))
"""

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=180)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode("utf-8", errors="replace"))
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)
    sys.exit(1)

_, so, _ = c.exec_command("gzip -1 -c /nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk", timeout=120)
raw = zlib.decompress(so.read(), 16 + zlib.MAX_WBITS)
open(local_sc, "wb").write(raw)
print(f"Pulled {local_sc} ({len(raw)} bytes)")
c.close()

print("\n=== INSTALLING UPDATED SmartCaller_V6_A16.apk ===")
print(sh(f"{ADB} install -r -d -g {local_sc}"))
sh(f"{ADB} shell appops set com.sh.smart.caller WRITE_SETTINGS allow")

print("\n=== LAUNCHING PeopleActivity & VERIFYING SIM_AUTOSYNC + IMPORT/EXPORT ===")
sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} shell am force-stop com.sh.smart.caller")
time.sleep(0.5)
sh(f"{ADB} logcat -c")
sh(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity")
time.sleep(4.5)

print("--- SIM_AUTOSYNC Logcat ---")
print(sh(f"{ADB} logcat -d -s SIM_AUTOSYNC:V"))

sh(f"{ADB} shell screencap -p /sdcard/sc_contacts_with_sim.png")
sh(r"adb -s 1099738415003670 pull /sdcard/sc_contacts_with_sim.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_contacts_with_sim.png")

# Test Settings -> Import/Export Contacts now!
sh(f"{ADB} shell input tap 651 130")
time.sleep(1.5)
sh(f"{ADB} shell input tap 336 898")
time.sleep(2.0)
sh(f"{ADB} shell screencap -p /sdcard/sc_import_export_fixed.png")
sh(r"adb -s 1099738415003670 pull /sdcard/sc_import_export_fixed.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_import_export_fixed.png")

print("--- Crash check in logcat ---")
for l in sh(f"{ADB} logcat -d").splitlines():
    if "FATAL EXCEPTION" in l or "AndroidRuntime" in l:
        print(" ", l)
