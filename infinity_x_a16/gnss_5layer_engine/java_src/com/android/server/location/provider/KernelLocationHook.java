package com.android.server.location.provider;

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
