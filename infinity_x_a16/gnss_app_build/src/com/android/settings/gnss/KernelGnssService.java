package com.android.settings.gnss;

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

    public static volatile boolean sCruiseActive = false;
    public static volatile float sSpeedKmh = 42.0f;
    public static volatile float sBearingDeg = 65.0f;
    public static volatile long sFixesPushed = 0L;
    public static volatile int sSvCount = 15;
    public static volatile float sMeanCn0 = 41.8f;

    private Handler mHandler;
    private LocationManager mLm;
    private long mLastTickMs = 0L;

    private final Runnable mPulseTask = new Runnable() {
        @Override
        public void run() {
            if (!sIsRunning) return;
            pushHardwareFix();
            mHandler.postDelayed(this, 500);
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
                .putFloat("alt", (float) sAlt)
                .putFloat("acc", sAcc)
                .putBoolean("active", true)
                .apply();
        } else {
            try {
                sLat = Double.parseDouble(prefs.getString("lat", "23.792500"));
                sLon = Double.parseDouble(prefs.getString("lon", "90.407800"));
            } catch (Exception ignored) {}
            sAlt = prefs.getFloat("alt", 15.2f);
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
        mLastTickMs = SystemClock.elapsedRealtime();
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
        long elapsedMs = SystemClock.elapsedRealtime();
        long elapsedNanos = SystemClock.elapsedRealtimeNanos();

        float dtSec = (mLastTickMs > 0 && elapsedMs > mLastTickMs)
                ? Math.min(2.0f, (elapsedMs - mLastTickMs) / 1000.0f)
                : 0.5f;
        mLastTickMs = elapsedMs;

        float speedMps = 0.0f;
        if (sCruiseActive && sSpeedKmh > 0.2f) {
            speedMps = sSpeedKmh / 3.6f;
            double distMeters = speedMps * dtSec;
            double rad = Math.toRadians(sBearingDeg);
            double dLat = (distMeters * Math.cos(rad)) / 111320.0;
            double cosLat = Math.max(0.15, Math.cos(Math.toRadians(sLat)));
            double dLon = (distMeters * Math.sin(rad)) / (111320.0 * cosLat);
            sLat = Math.max(-85.0, Math.min(85.0, sLat + dLat));
            sLon = ((sLon + dLon + 540.0) % 360.0) - 180.0;
        }

        double jLat = 0.0;
        double jLon = 0.0;
        if (sJitter) {
            jLat = ((elapsedNanos % 41L) - 20L) * 1.0e-7;
            jLon = (((elapsedNanos / 7L) % 41L) - 20L) * 1.0e-7;
        }
        double finalLat = sLat + jLat;
        double finalLon = sLon + jLon;

        int sv = 14 + (int) ((nowMs / 4000L) % 4L);
        sSvCount = sv;
        sMeanCn0 = 39.4f + ((nowMs / 1300L) % 5L) * 0.7f;
        sFixesPushed++;

        String[] providers = new String[]{LocationManager.GPS_PROVIDER, LocationManager.NETWORK_PROVIDER, "fused"};
        for (String p : providers) {
            try {
                Location loc = new Location(p);
                loc.setLatitude(finalLat);
                loc.setLongitude(finalLon);
                loc.setAltitude(sAlt);
                loc.setAccuracy(sAcc);
                loc.setVerticalAccuracyMeters(2.2f);
                loc.setSpeed(speedMps);
                loc.setSpeedAccuracyMetersPerSecond(0.4f);
                loc.setBearing(sBearingDeg);
                loc.setBearingAccuracyDegrees(3.5f);
                loc.setTime(nowMs);
                loc.setElapsedRealtimeNanos(elapsedNanos);
                loc.setElapsedRealtimeUncertaintyNanos(35000.0);

                if ("gps".equals(p)) {
                    Bundle extras = new Bundle();
                    extras.putInt("satellites", sv);
                    extras.putInt("meanCn0", Math.round(sMeanCn0));
                    extras.putInt("maxCn0", 46);
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
        sCruiseActive = false;
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
            .setContentTitle("Kernel GNSS Studio (Stealth Locked)")
            .setContentText(String.format("%.5f, %.5f | %d SV | isMock=false", sLat, sLon, sSvCount))
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
