package com.android.settings.gnss;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;

public class KernelGnssService extends Service {
    public static final String ACTION_START = "com.android.settings.gnss.START";
    public static final String ACTION_STOP = "com.android.settings.gnss.STOP";
    private static final String CHANNEL_ID = "kernel_gnss_channel";

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
            sLat = Double.parseDouble(prefs.getString("lat", "23.792500"));
            sLon = Double.parseDouble(prefs.getString("lon", "90.407800"));
            sAcc = prefs.getFloat("acc", 2.6f);
            prefs.edit().putBoolean("active", true).apply();
        }

        startForeground(1001, buildNotification());
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
                mLm.addTestProvider(
                    p,
                    false,
                    "gps".equals(p),
                    "network".equals(p),
                    false,
                    true,
                    true,
                    true,
                    1,
                    1
                );
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
        stopForeground(true);
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
