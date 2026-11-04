import os, subprocess

work = "/nvme0n1-disk/infinity_x/mock_work"
os.chdir(work)

# 1. Create KernelLocationHook.smali in srv_classes2/com/android/server/location/provider/
hook_Java_dir = os.path.join(work, "java_src")
os.makedirs(hook_Java_dir + "/android/location", exist_ok=True)
os.makedirs(hook_Java_dir + "/android/os", exist_ok=True)
os.makedirs(hook_Java_dir + "/com/android/server/location/provider", exist_ok=True)

with open(hook_Java_dir + "/android/os/SystemProperties.java", "w") as f:
    f.write("""package android.os;
public class SystemProperties {
    public static String get(String key, String def) { return def; }
}
""")

with open(hook_Java_dir + "/android/os/SystemClock.java", "w") as f:
    f.write("""package android.os;
public class SystemClock {
    public static long elapsedRealtime() { return 0L; }
    public static long elapsedRealtimeNanos() { return 0L; }
}
""")

with open(hook_Java_dir + "/android/os/Bundle.java", "w") as f:
    f.write("""package android.os;
public class Bundle {
    public Bundle() {}
    public Bundle(Bundle b) {}
    public int getInt(String k, int d) { return d; }
    public void putInt(String k, int v) {}
    public void remove(String k) {}
}
""")

with open(hook_Java_dir + "/android/location/Location.java", "w") as f:
    f.write("""package android.location;
import android.os.Bundle;
public class Location {
    public Location(String provider) {}
    public String getProvider() { return ""; }
    public void setMock(boolean mock) {}
    public Bundle getExtras() { return null; }
    public void setExtras(Bundle b) {}
    public boolean hasAltitude() { return false; }
    public void setAltitude(double a) {}
    public void setVerticalAccuracyMeters(float v) {}
    public boolean hasAccuracy() { return false; }
    public void setAccuracy(float a) {}
    public boolean hasElapsedRealtimeUncertaintyNanos() { return false; }
    public void setElapsedRealtimeUncertaintyNanos(double u) {}
    public void setLatitude(double l) {}
    public void setLongitude(double l) {}
    public void setTime(long t) {}
    public void setElapsedRealtimeNanos(long n) {}
}
""")

with open(hook_Java_dir + "/android/location/LocationResult.java", "w") as f:
    f.write("""package android.location;
import java.util.List;
public final class LocationResult {
    public List<Location> asList() { return null; }
}
""")

with open(hook_Java_dir + "/com/android/server/location/provider/KernelLocationHook.java", "w") as f:
    f.write("""package com.android.server.location.provider;

import android.location.Location;
import android.location.LocationResult;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.SystemProperties;
import java.util.List;

public class KernelLocationHook {
    public static void sanitizeAndOverrideLocation(Location loc) {
        if (loc == null) return;
        loc.setMock(false);

        Bundle extras = loc.getExtras();
        if (extras != null) {
            extras.remove("mockLocation");
            extras.remove("isMock");
        }

        if ("gps".equals(loc.getProvider())) {
            if (extras == null) {
                extras = new Bundle();
            }
            if (extras.getInt("satellites", 0) <= 0) {
                long now = SystemClock.elapsedRealtime();
                int sv = 12 + (int)((now / 7000L) % 4L);
                int meanCn0 = 33 + (int)((now / 3000L) % 4L);
                int maxCn0 = 41 + (int)((now / 5000L) % 4L);
                extras.putInt("satellites", sv);
                extras.putInt("meanCn0", meanCn0);
                extras.putInt("maxCn0", maxCn0);
            }
            loc.setExtras(extras);
            if (!loc.hasAltitude()) {
                loc.setAltitude(14.8);
                loc.setVerticalAccuracyMeters(3.2f);
            }
            if (!loc.hasElapsedRealtimeUncertaintyNanos()) {
                loc.setElapsedRealtimeUncertaintyNanos(45000.0);
            }
        } else if (extras != null) {
            loc.setExtras(extras);
        }

        String coords = SystemProperties.get("persist.sys.kernel.gps.coords", "");
        if (coords != null && !coords.isEmpty()) {
            try {
                String[] parts = coords.split(",");
                if (parts.length >= 2) {
                    double lat = Double.parseDouble(parts[0].trim());
                    double lon = Double.parseDouble(parts[1].trim());
                    double alt = parts.length >= 3 ? Double.parseDouble(parts[2].trim()) : 15.2;
                    float acc = parts.length >= 4 ? Float.parseFloat(parts[3].trim()) : 3.4f;
                    long nanos = SystemClock.elapsedRealtimeNanos();
                    double jLat = ((nanos % 41L) - 20L) * 1.0e-7;
                    double jLon = (((nanos / 7L) % 41L) - 20L) * 1.0e-7;
                    loc.setLatitude(lat + jLat);
                    loc.setLongitude(lon + jLon);
                    loc.setAltitude(alt);
                    loc.setAccuracy(acc);
                    loc.setVerticalAccuracyMeters(2.8f);
                    loc.setTime(System.currentTimeMillis());
                    loc.setElapsedRealtimeNanos(nanos);
                    loc.setMock(false);
                }
            } catch (Exception ignored) {
            }
        }
    }

    public static LocationResult sanitizeAndOverrideResult(LocationResult res) {
        if (res == null) return null;
        List<Location> list = res.asList();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                sanitizeAndOverrideLocation(list.get(i));
            }
        }
        return res;
    }

    public static Location createHardwareGnssFix() {
        String coords = SystemProperties.get("persist.sys.kernel.gps.coords", "");
        if (coords == null || coords.isEmpty()) return null;
        Location loc = new Location("gps");
        loc.setAccuracy(3.4f);
        loc.setAltitude(15.2);
        loc.setVerticalAccuracyMeters(2.8f);
        loc.setElapsedRealtimeUncertaintyNanos(45000.0);
        sanitizeAndOverrideLocation(loc);
        return loc;
    }
}
""")

os.makedirs(work + "/java_classes", exist_ok=True)
subprocess.check_call([
    "javac", "--release", "11", "-d", work + "/java_classes",
    hook_Java_dir + "/android/os/SystemProperties.java",
    hook_Java_dir + "/android/os/SystemClock.java",
    hook_Java_dir + "/android/os/Bundle.java",
    hook_Java_dir + "/android/location/Location.java",
    hook_Java_dir + "/android/location/LocationResult.java",
    hook_Java_dir + "/com/android/server/location/provider/KernelLocationHook.java"
])

d8_bin = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/d8"
subprocess.check_call([
    d8_bin, "--output", work + "/java_classes",
    work + "/java_classes/com/android/server/location/provider/KernelLocationHook.class"
])
subprocess.check_call([
    "baksmali", "d", work + "/java_classes/classes.dex", "-o", work + "/hook_smali"
])
subprocess.check_call([
    "cp", work + "/hook_smali/com/android/server/location/provider/KernelLocationHook.smali",
    work + "/srv_classes2/com/android/server/location/provider/KernelLocationHook.smali"
])
print("Compiled KernelLocationHook.smali successfully!")
