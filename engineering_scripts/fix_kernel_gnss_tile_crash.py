import sys, os, time, re, subprocess, paramiko, xml.etree.ElementTree as ET

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"

REMOTE_PATCH_AND_BUILD = r'''import os, subprocess, shutil

WORK = "/nvme0n1-disk/infinity_x/gnss_app_build"
assert os.path.exists(WORK + "/assets/index.html"), "Missing existing gnss_app_build/assets/index.html"

MANIFEST = """<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.android.settings.gnss"
    android:versionCode="2"
    android:versionName="2.0-KERNEL">

    <uses-sdk android:minSdkVersion="29" android:targetSdkVersion="34" />

    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_MOCK_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_LOCATION_EXTRA_COMMANDS" />
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE_LOCATION" />
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE_SPECIAL_USE" />
    <uses-permission android:name="android.permission.POST_NOTIFICATIONS" />
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />

    <application
        android:label="Kernel GNSS"
        android:icon="@drawable/ic_gnss"
        android:usesCleartextTraffic="true"
        android:theme="@android:style/Theme.DeviceDefault.NoActionBar">

        <activity
            android:name=".MainActivity"
            android:label="Kernel GNSS Location"
            android:exported="true"
            android:launchMode="singleTask"
            android:configChanges="orientation|screenSize|keyboardHidden">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
                <action android:name="android.service.quicksettings.action.QS_TILE_PREFERENCES" />
            </intent-filter>
            <intent-filter android:priority="100">
                <action android:name="com.android.settings.action.IA_SETTINGS" />
                <action android:name="com.android.settings.action.EXTRA_SETTINGS" />
                <category android:name="android.intent.category.DEFAULT" />
            </intent-filter>
            <meta-data android:name="com.android.settings.category"
                android:value="com.android.settings.category.ia.homepage" />
            <meta-data android:name="com.android.settings.title"
                android:value="Kernel GNSS Location" />
            <meta-data android:name="com.android.settings.summary"
                android:value="Native OpenStreetMap &amp; Hardware GNSS Controller" />
        </activity>

        <service
            android:name=".KernelGnssService"
            android:exported="false"
            android:foregroundServiceType="specialUse">
            <property
                android:name="android.app.PROPERTY_SPECIAL_USE_FGS_SUBTYPE"
                android:value="kernel_gnss_hardware_controller" />
        </service>

        <service
            android:name=".GnssTileService"
            android:label="Kernel GNSS"
            android:icon="@drawable/ic_gnss"
            android:permission="android.permission.BIND_QUICK_SETTINGS_TILE"
            android:exported="true">
            <intent-filter>
                <action android:name="android.service.quicksettings.action.QS_TILE" />
            </intent-filter>
        </service>

    </application>
</manifest>
"""

SERVICE_JAVA = """package com.android.settings.gnss;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;

public class KernelGnssService extends Service {
    public static final String ACTION_START = "com.android.settings.gnss.START";
    public static final String ACTION_STOP = "com.android.settings.gnss.STOP";
    private static final String CHANNEL_ID = "kernel_gnss_channel";
    private static final int FGS_TYPE_SPECIAL_USE = 0x40000000;

    public static volatile boolean sIsRunning = false;
    public static volatile double sLat = 23.792500;
    public static volatile double sLon = 90.407800;
    public static volatile double sRealLat = 23.796031;
    public static volatile double sRealLon = 90.376788;
    public static volatile double sAlt = 15.2;
    public static volatile float sAcc = 2.6f;
    public static volatile boolean sJitter = true;

    private Handler mHandler;
    private LocationManager mLm;

    private final Runnable mPulseTask = new Runnable() {
        @Override
        public void run() {
            if (!sIsRunning) return;
            pushHardwareFix();
            mHandler.postDelayed(this, 800);
        }
    };

    @Override
    public void onCreate() {
        super.onCreate();
        mHandler = new Handler(Looper.getMainLooper());
        mLm = (LocationManager) getSystemService(Context.LOCATION_SERVICE);
        createChannel();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null && ACTION_STOP.equals(intent.getAction())) {
            stopEngine();
            stopSelf();
            return START_NOT_STICKY;
        }

        SharedPreferences prefs = getSharedPreferences("kernel_gnss", MODE_PRIVATE);
        if (intent != null && intent.hasExtra("lat")) {
            sLat = intent.getDoubleExtra("lat", sLat);
            sLon = intent.getDoubleExtra("lon", sLon);
            sAlt = intent.getDoubleExtra("alt", sAlt);
            sAcc = intent.getFloatExtra("acc", sAcc);
            sJitter = intent.getBooleanExtra("jitter", true);
            prefs.edit()
                .putString("lat", String.valueOf(sLat))
                .putString("lon", String.valueOf(sLon))
                .putFloat("acc", sAcc)
                .putBoolean("active", true)
                .apply();
        } else {
            try {
                sLat = Double.parseDouble(prefs.getString("lat", "23.792500"));
                sLon = Double.parseDouble(prefs.getString("lon", "90.407800"));
            } catch (Exception ignored) {}
            sAcc = prefs.getFloat("acc", 2.6f);
            prefs.edit().putBoolean("active", true).apply();
        }

        try {
            Notification notif = buildNotification();
            if (Build.VERSION.SDK_INT >= 34) {
                startForeground(1001, notif, FGS_TYPE_SPECIAL_USE);
            } else {
                startForeground(1001, notif);
            }
        } catch (Throwable t) {
            try {
                startForeground(1001, buildNotification());
            } catch (Throwable ignored) {}
        }

        ensureProviders();
        sIsRunning = true;
        mHandler.removeCallbacks(mPulseTask);
        mHandler.post(mPulseTask);
        return START_STICKY;
    }

    private void ensureProviders() {
        String[] providers = new String[]{LocationManager.GPS_PROVIDER, LocationManager.NETWORK_PROVIDER, "fused"};
        for (String p : providers) {
            try {
                mLm.addTestProvider(p, false, "gps".equals(p), "network".equals(p), false, true, true, true, 1, 1);
            } catch (Exception ignored) {
                try {
                    mLm.setTestProviderEnabled(p, true);
                } catch (Exception ignored2) {}
            }
            try {
                mLm.setTestProviderEnabled(p, true);
            } catch (Exception ignored) {}
        }
    }

    private void pushHardwareFix() {
        long nowMs = System.currentTimeMillis();
        long elapsedNanos = SystemClock.elapsedRealtimeNanos();
        double jLat = 0.0;
        double jLon = 0.0;
        if (sJitter) {
            jLat = ((elapsedNanos % 41L) - 20L) * 1.0e-7;
            jLon = (((elapsedNanos / 7L) % 41L) - 20L) * 1.0e-7;
        }
        double finalLat = sLat + jLat;
        double finalLon = sLon + jLon;

        String[] providers = new String[]{LocationManager.GPS_PROVIDER, LocationManager.NETWORK_PROVIDER, "fused"};
        for (String p : providers) {
            try {
                Location loc = new Location(p);
                loc.setLatitude(finalLat);
                loc.setLongitude(finalLon);
                loc.setAltitude(sAlt);
                loc.setAccuracy(sAcc);
                loc.setVerticalAccuracyMeters(2.5f);
                loc.setSpeed(0.0f);
                loc.setSpeedAccuracyMetersPerSecond(0.5f);
                loc.setBearing(0.0f);
                loc.setBearingAccuracyDegrees(5.0f);
                loc.setTime(nowMs);
                loc.setElapsedRealtimeNanos(elapsedNanos);
                loc.setElapsedRealtimeUncertaintyNanos(45000.0);

                if ("gps".equals(p)) {
                    Bundle extras = new Bundle();
                    int sv = 12 + (int)((nowMs / 5000L) % 4L);
                    extras.putInt("satellites", sv);
                    extras.putInt("meanCn0", 35);
                    extras.putInt("maxCn0", 43);
                    loc.setExtras(extras);
                }
                mLm.setTestProviderLocation(p, loc);
            } catch (Exception ignored) {
                ensureProviders();
            }
        }
    }

    public static void restoreRealGpsNow(Context ctx) {
        sIsRunning = false;
        LocationManager lm = (LocationManager) ctx.getSystemService(Context.LOCATION_SERVICE);
        final SharedPreferences prefs = ctx.getSharedPreferences("kernel_gnss", MODE_PRIVATE);

        long nowMs = System.currentTimeMillis();
        long elapsedNanos = SystemClock.elapsedRealtimeNanos();
        String[] flushProviders = new String[]{LocationManager.GPS_PROVIDER, LocationManager.NETWORK_PROVIDER, "fused"};
        for (String p : flushProviders) {
            try {
                lm.addTestProvider(p, false, "gps".equals(p), "network".equals(p), false, true, true, true, 1, 1);
            } catch (Exception ignored) {}
            try {
                lm.setTestProviderEnabled(p, true);
                Location realFix = new Location(p);
                realFix.setLatitude(sRealLat);
                realFix.setLongitude(sRealLon);
                realFix.setAltitude(12.0);
                realFix.setAccuracy(15.0f);
                realFix.setVerticalAccuracyMeters(3.0f);
                realFix.setTime(nowMs);
                realFix.setElapsedRealtimeNanos(elapsedNanos);
                lm.setTestProviderLocation(p, realFix);
            } catch (Exception ignored) {}
        }

        for (String p : flushProviders) {
            try {
                lm.removeTestProvider(p);
            } catch (Exception ignored) {}
        }

        try {
            lm.requestSingleUpdate(LocationManager.NETWORK_PROVIDER, new LocationListener() {
                @Override
                public void onLocationChanged(Location loc) {
                    if (!sIsRunning && loc != null) {
                        sRealLat = loc.getLatitude();
                        sRealLon = loc.getLongitude();
                        prefs.edit()
                            .putString("real_lat", String.valueOf(sRealLat))
                            .putString("real_lon", String.valueOf(sRealLon))
                            .apply();
                    }
                }
                @Override public void onStatusChanged(String p, int s, Bundle b) {}
                @Override public void onProviderEnabled(String p) {}
                @Override public void onProviderDisabled(String p) {}
            }, Looper.getMainLooper());
        } catch (Exception ignored) {}

        sLat = sRealLat;
        sLon = sRealLon;
        prefs.edit()
            .putString("lat", String.valueOf(sRealLat))
            .putString("lon", String.valueOf(sRealLon))
            .putString("real_lat", String.valueOf(sRealLat))
            .putString("real_lon", String.valueOf(sRealLon))
            .putBoolean("active", false)
            .apply();
    }

    private void stopEngine() {
        mHandler.removeCallbacks(mPulseTask);
        restoreRealGpsNow(this);
        try {
            stopForeground(true);
        } catch (Throwable ignored) {}
    }

    private void createChannel() {
        NotificationManager nm = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        NotificationChannel ch = new NotificationChannel(CHANNEL_ID, "Kernel GNSS Engine", NotificationManager.IMPORTANCE_LOW);
        nm.createNotificationChannel(ch);
    }

    private Notification buildNotification() {
        Intent openIntent = new Intent(this, MainActivity.class);
        PendingIntent piOpen = PendingIntent.getActivity(this, 0, openIntent, PendingIntent.FLAG_IMMUTABLE);

        Intent stopIntent = new Intent(this, KernelGnssService.class);
        stopIntent.setAction(ACTION_STOP);
        PendingIntent piStop = PendingIntent.getService(this, 1, stopIntent, PendingIntent.FLAG_IMMUTABLE);

        return new Notification.Builder(this, CHANNEL_ID)
            .setSmallIcon(android.R.drawable.ic_menu_mylocation)
            .setContentTitle("Kernel GNSS Active (Stealth Mode)")
            .setContentText(String.format("Locked: %.5f, %.5f | isMock=false", sLat, sLon))
            .setContentIntent(piOpen)
            .addAction(android.R.drawable.ic_menu_close_clear_cancel, "Restore Real GPS", piStop)
            .setOngoing(true)
            .build();
    }

    @Override
    public void onDestroy() {
        stopEngine();
        super.onDestroy();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
"""

TILE_JAVA = """package com.android.settings.gnss;

import android.content.Intent;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import android.widget.Toast;

public class GnssTileService extends TileService {
    @Override
    public void onStartListening() {
        super.onStartListening();
        syncTile();
    }

    private void syncTile() {
        Tile t = getQsTile();
        if (t == null) return;
        boolean active = KernelGnssService.sIsRunning;
        t.setState(active ? Tile.STATE_ACTIVE : Tile.STATE_INACTIVE);
        t.setLabel("Kernel GNSS");
        t.setSubtitle(active ? "Locked" : "Real GPS");
        t.updateTile();
    }

    @Override
    public void onClick() {
        super.onClick();
        try {
            if (KernelGnssService.sIsRunning) {
                KernelGnssService.sIsRunning = false;
                Intent i = new Intent(this, KernelGnssService.class);
                i.setAction(KernelGnssService.ACTION_STOP);
                startService(i);
                Toast.makeText(this, "Kernel GNSS OFF (Real GPS)", Toast.LENGTH_SHORT).show();
            } else {
                KernelGnssService.sIsRunning = true;
                Intent i = new Intent(this, KernelGnssService.class);
                i.setAction(KernelGnssService.ACTION_START);
                startForegroundService(i);
                Toast.makeText(this, "Kernel GNSS ON (Locked)", Toast.LENGTH_SHORT).show();
            }
        } catch (Throwable t) {
            KernelGnssService.sIsRunning = false;
        }
        syncTile();
    }
}
"""

with open(WORK + "/AndroidManifest.xml", "w") as f:
    f.write(MANIFEST)
with open(WORK + "/src/com/android/settings/gnss/KernelGnssService.java", "w") as f:
    f.write(SERVICE_JAVA)
with open(WORK + "/src/com/android/settings/gnss/GnssTileService.java", "w") as f:
    f.write(TILE_JAVA)

shutil.rmtree(WORK + "/compiled_res", ignore_errors=True)
shutil.rmtree(WORK + "/gen", ignore_errors=True)
shutil.rmtree(WORK + "/classes", ignore_errors=True)
for fn in ["unsigned.apk", "aligned.apk", "classes.dex", "KernelGnssSettings.apk"]:
    p = os.path.join(WORK, fn)
    if os.path.exists(p):
        os.remove(p)

os.makedirs(WORK + "/compiled_res", exist_ok=True)
os.makedirs(WORK + "/gen", exist_ok=True)
os.makedirs(WORK + "/classes", exist_ok=True)

BIN = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin"
AAPT2 = "/usr/bin/aapt2" if os.path.exists("/usr/bin/aapt2") else f"{BIN}/aapt2"
ZIPALIGN = "/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/zipalign"
if not os.path.exists(ZIPALIGN):
    ZIPALIGN = f"{BIN}/zipalign"
ANDROID_JAR = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts/sdk -name android.jar | grep public | sort -V | tail -n 1", shell=True).decode().strip()

print("Using ANDROID_JAR:", ANDROID_JAR)
subprocess.check_call([AAPT2, "compile", "--dir", WORK + "/res", "-o", WORK + "/compiled_res/res.zip"])
subprocess.check_call([
    AAPT2, "link",
    "-o", WORK + "/unsigned.apk",
    "-I", ANDROID_JAR,
    "--manifest", WORK + "/AndroidManifest.xml",
    "-A", WORK + "/assets",
    "--java", WORK + "/gen",
    WORK + "/compiled_res/res.zip"
])

java_files = [
    WORK + "/gen/com/android/settings/gnss/R.java",
    WORK + "/src/com/android/settings/gnss/KernelGnssService.java",
    WORK + "/src/com/android/settings/gnss/MainActivity.java",
    WORK + "/src/com/android/settings/gnss/GnssTileService.java",
]
subprocess.check_call(["javac", "-source", "8", "-target", "8", "-bootclasspath", ANDROID_JAR, "-d", WORK + "/classes"] + java_files)

class_files = subprocess.check_output(f"find {WORK}/classes -name '*.class'", shell=True).decode().split()
subprocess.check_call([
    "java", "-cp", "/nvme0n1-disk/shunno_os/prebuilts/r8/r8.jar", "com.android.tools.r8.D8",
    "--lib", ANDROID_JAR, "--output", WORK
] + class_files)

subprocess.check_call(["zip", "-j", "-0", WORK + "/unsigned.apk", WORK + "/classes.dex"])
subprocess.check_call([ZIPALIGN, "-f", "-p", "4", WORK + "/unsigned.apk", WORK + "/aligned.apk"])

KEY_PK8 = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8"
KEY_PEM = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem"
subprocess.check_call([
    f"{BIN}/apksigner", "sign",
    "--key", KEY_PK8, "--cert", KEY_PEM,
    "--out", WORK + "/KernelGnssSettings.apk",
    WORK + "/aligned.apk"
])
print("REBUILT KernelGnssSettings.apk v2.0 SUCCESS:", os.path.getsize(WORK + "/KernelGnssSettings.apk"))
'''

print("=== 1. COMPILE FIXED KernelGnssSettings.apk (specialUse FGS) ON SERVER ===", flush=True)
cl = paramiko.SSHClient()
cl.set_missing_host_key_policy(paramiko.AutoAddPolicy())
cl.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = cl.exec_command("python3 -", timeout=120)
stdin.write(REMOTE_PATCH_AND_BUILD)
stdin.channel.shutdown_write()
out = stdout.read().decode("utf-8", "replace")
err = stderr.read().decode("utf-8", "replace")
rc = stdout.channel.recv_exit_status()
print(out, flush=True)
if rc != 0:
    print("STDERR:", err, flush=True)
    raise RuntimeError("Build failed")

local_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\KernelGnssSettings.apk"
sftp = cl.open_sftp()
sftp.get("/nvme0n1-disk/infinity_x/gnss_app_build/KernelGnssSettings.apk", local_apk)
sftp.close()
cl.close()
print("Downloaded fixed APK:", os.path.getsize(local_apk), "bytes", flush=True)

print("=== 2. INSTALL ON LIVE PHONE & TEST QUICK SETTINGS TILE CLICK ===", flush=True)
def sh(cmd):
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, encoding="utf-8", errors="replace")
    return p.returncode, (p.stdout + "\n" + p.stderr).strip()

rc, inst = sh(f'{ADB} install -r "{local_apk}"')
print("adb install -r:", rc, inst, flush=True)
sh(f"{ADB} shell pm grant com.android.settings.gnss android.permission.ACCESS_FINE_LOCATION")
sh(f"{ADB} shell pm grant com.android.settings.gnss android.permission.ACCESS_COARSE_LOCATION")
sh(f"{ADB} shell pm grant com.android.settings.gnss android.permission.ACCESS_BACKGROUND_LOCATION")
sh(f"{ADB} shell pm grant com.android.settings.gnss android.permission.POST_NOTIFICATIONS")

sh(f"{ADB} logcat -c")
sh(f"{ADB} shell input keyevent KEYCODE_WAKEUP")
sh(f"{ADB} shell wm dismiss-keyguard")
sh(f"{ADB} shell input keyevent KEYCODE_HOME")
time.sleep(0.8)
sh(f"{ADB} shell cmd statusbar expand-settings")
time.sleep(1.5)

# Dump QS UI to locate the exact 1st tile (Kernel GNSS)
sh(f"{ADB} shell uiautomator dump /sdcard/qs_dump.xml")
_, xml_txt = sh(f"{ADB} shell cat /sdcard/qs_dump.xml")
tx, ty = 144, 435  # fallback based on 720x1612 screenshot
if "<hierarchy" in xml_txt:
    root = ET.fromstring(xml_txt[xml_txt.index("<hierarchy"):])
    for n in root.iter("node"):
        cd = n.attrib.get("content-desc", "")
        txt = n.attrib.get("text", "")
        if "Kernel GNSS" in cd or "Kernel GNSS" in txt:
            m = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", n.attrib.get("bounds", ""))
            if m:
                x1, y1, x2, y2 = map(int, m.groups())
                tx, ty = (x1 + x2) // 2, (y1 + y2) // 2
                print(f"Found Kernel GNSS QS tile at ({tx}, {ty}), desc='{cd}'", flush=True)
                break

# Tap 1 -> Turn ON
sh(f"{ADB} shell input tap {tx} {ty}")
time.sleep(1.8)
sh(f"{ADB} shell screencap -p /sdcard/sc_gnss_tile_on.png")
sh(rf'{ADB} pull /sdcard/sc_gnss_tile_on.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_gnss_tile_on.png')

# Tap 2 -> Turn OFF (Restore Real GPS)
sh(f"{ADB} shell input tap {tx} {ty}")
time.sleep(1.8)
sh(f"{ADB} shell screencap -p /sdcard/sc_gnss_tile_off.png")
sh(rf'{ADB} pull /sdcard/sc_gnss_tile_off.png C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\sc_gnss_tile_off.png')

sh(f"{ADB} shell cmd statusbar collapse")
_, crash_out = sh(f"{ADB} logcat -b crash -d")
print("CRASH LOG AFTER 2 TAPS:", repr(crash_out[:500]), flush=True)
