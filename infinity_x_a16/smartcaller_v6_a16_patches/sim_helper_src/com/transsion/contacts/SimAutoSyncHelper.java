package com.transsion.contacts;

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
