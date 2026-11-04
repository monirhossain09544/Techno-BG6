package com.transsion.simprobe;

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
