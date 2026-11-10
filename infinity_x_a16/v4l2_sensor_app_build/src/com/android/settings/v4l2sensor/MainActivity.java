package com.android.settings.v4l2sensor;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Insets;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;

import org.json.JSONObject;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

public class MainActivity extends Activity implements SensorEventListener {
    static {
        System.loadLibrary("bg6_v4l2_sensor");
    }

    // Native Rust JNI entrypoints (rust_core/bg6_v4l2_sensor_jni/src/lib.rs)
    public native String nativeGetStudioTelemetryJson();
    public native boolean nativeSetKinematicMode(int mode, float speedKmh, float headingDeg);
    public native boolean nativeSetManualGimbal(float pitchDeg, float rollDeg, float yawDeg, float linearG);
    public native boolean nativeSetV4l2Config(int pattern, int fps);
    public native boolean nativeTriggerStepBurst(int steps);

    private FrameLayout mRootLayout;
    private WebView mWebView;
    private boolean mIsLightTheme = false;
    private SensorManager mSensorManager;

    private volatile float mHalAx = 0f, mHalAy = 0f, mHalAz = 9.81f;
    private volatile float mHalGx = 0f, mHalGy = 0f, mHalGz = 0f;
    private volatile float mHalMx = 0f, mHalMy = 0f, mHalMz = 0f;
    private volatile long mHalCallbacks = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Window w = getWindow();
        if (w != null) {
            w.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            w.clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
            w.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            w.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                w.setDecorFitsSystemWindows(false);
            }
        }

        mSensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);

        mRootLayout = new FrameLayout(this);
        mRootLayout.setBackgroundColor(Color.parseColor("#000000"));

        mWebView = new WebView(this);
        mWebView.setBackgroundColor(Color.parseColor("#000000"));
        mWebView.setVerticalScrollBarEnabled(false);
        mWebView.setHorizontalScrollBarEnabled(false);
        mWebView.setOverScrollMode(View.OVER_SCROLL_NEVER);

        mRootLayout.addView(mWebView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            mRootLayout.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
                @Override
                public WindowInsets onApplyWindowInsets(View v, WindowInsets insets) {
                    Insets sys = insets.getInsets(
                            WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
                    v.setPadding(sys.left, sys.top, sys.right, sys.bottom);
                    return WindowInsets.CONSUMED;
                }
            });
        }

        setContentView(mRootLayout);
        applySystemBarTheme(mIsLightTheme);

        WebSettings ws = mWebView.getSettings();
        ws.setJavaScriptEnabled(true);
        ws.setDomStorageEnabled(true);
        ws.setDatabaseEnabled(true);
        ws.setAllowFileAccess(true);
        ws.setAllowFileAccessFromFileURLs(true);
        ws.setAllowUniversalAccessFromFileURLs(true);
        ws.setCacheMode(WebSettings.LOAD_DEFAULT);
        ws.setTextZoom(100);
        ws.setMixedContentMode(WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);

        mWebView.setWebViewClient(new WebViewClient());
        mWebView.setWebChromeClient(new WebChromeClient());
        mWebView.addJavascriptInterface(new Bridge(), "AndroidBridge");
        mWebView.loadUrl("file:///android_asset/index.html");
    }

    @Override
    protected void onResume() {
        super.onResume();
        applySystemBarTheme(mIsLightTheme);
        if (mSensorManager != null) {
            Sensor accel = mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
            Sensor gyro = mSensorManager.getDefaultSensor(Sensor.TYPE_GYROSCOPE);
            Sensor mag = mSensorManager.getDefaultSensor(Sensor.TYPE_MAGNETIC_FIELD);
            if (accel != null) mSensorManager.registerListener(this, accel, SensorManager.SENSOR_DELAY_GAME);
            if (gyro != null) mSensorManager.registerListener(this, gyro, SensorManager.SENSOR_DELAY_GAME);
            if (mag != null) mSensorManager.registerListener(this, mag, SensorManager.SENSOR_DELAY_UI);
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (mSensorManager != null) {
            mSensorManager.unregisterListener(this);
        }
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        if (event == null || event.values == null) return;
        mHalCallbacks++;
        int t = event.sensor.getType();
        if (t == Sensor.TYPE_ACCELEROMETER && event.values.length >= 3) {
            mHalAx = event.values[0];
            mHalAy = event.values[1];
            mHalAz = event.values[2];
        } else if (t == Sensor.TYPE_GYROSCOPE && event.values.length >= 3) {
            mHalGx = event.values[0];
            mHalGy = event.values[1];
            mHalGz = event.values[2];
        } else if (t == Sensor.TYPE_MAGNETIC_FIELD && event.values.length >= 3) {
            mHalMx = event.values[0];
            mHalMy = event.values[1];
            mHalMz = event.values[2];
        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {}

    private String getDeviceLanIp() {
        try {
            Enumeration<NetworkInterface> ifaces = NetworkInterface.getNetworkInterfaces();
            while (ifaces != null && ifaces.hasMoreElements()) {
                NetworkInterface nif = ifaces.nextElement();
                if (!nif.isUp() || nif.isLoopback()) continue;
                Enumeration<InetAddress> addrs = nif.getInetAddresses();
                while (addrs.hasMoreElements()) {
                    InetAddress addr = addrs.nextElement();
                    if (addr instanceof Inet4Address && !addr.isLoopbackAddress()) {
                        return addr.getHostAddress();
                    }
                }
            }
        } catch (Exception ignored) {}
        return "192.168.1.100";
    }

    private void applySystemBarTheme(boolean lightTheme) {
        mIsLightTheme = lightTheme;
        Window w = getWindow();
        if (w == null) return;
        int barColor = Color.parseColor(lightTheme ? "#ECEAE4" : "#000000");
        w.setStatusBarColor(barColor);
        w.setNavigationBarColor(barColor);
        if (mRootLayout != null) {
            mRootLayout.setBackgroundColor(barColor);
        }
        if (mWebView != null) {
            mWebView.setBackgroundColor(barColor);
        }
        int flags = View.SYSTEM_UI_FLAG_VISIBLE;
        if (lightTheme) {
            flags |= View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR | View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR;
        }
        w.getDecorView().setSystemUiVisibility(flags);
        android.view.WindowInsetsController ic = w.getDecorView().getWindowInsetsController();
        if (ic == null) {
            ic = w.getInsetsController();
        }
        if (ic != null) {
            ic.show(android.view.WindowInsets.Type.statusBars() | android.view.WindowInsets.Type.navigationBars());
            int mask = android.view.WindowInsetsController.APPEARANCE_LIGHT_STATUS_BARS
                     | android.view.WindowInsetsController.APPEARANCE_LIGHT_NAVIGATION_BARS;
            ic.setSystemBarsAppearance(lightTheme ? mask : 0, mask);
        }
    }

    private class Bridge {
        @JavascriptInterface
        public void syncSystemBars(final boolean lightTheme) {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    applySystemBarTheme(lightTheme);
                }
            });
        }

        @JavascriptInterface
        public String getStudioTelemetryJson() {
            try {
                String raw = nativeGetStudioTelemetryJson();
                JSONObject obj = new JSONObject(raw);
                obj.put("lan_ip", getDeviceLanIp());
                obj.put("hal_callbacks", mHalCallbacks);
                JSONObject hal = new JSONObject();
                hal.put("ax", (double) mHalAx);
                hal.put("ay", (double) mHalAy);
                hal.put("az", (double) mHalAz);
                hal.put("gx", (double) mHalGx);
                hal.put("gy", (double) mHalGy);
                hal.put("gz", (double) mHalGz);
                hal.put("mx", (double) mHalMx);
                hal.put("my", (double) mHalMy);
                hal.put("mz", (double) mHalMz);
                obj.put("hal", hal);
                return obj.toString();
            } catch (Throwable t) {
                return "{\"kernel_ready\":false,\"err\":\"" + t.getMessage() + "\"}";
            }
        }

        @JavascriptInterface
        public boolean setKinematicMode(int mode, float speedKmh, float headingDeg) {
            try {
                return nativeSetKinematicMode(mode, speedKmh, headingDeg);
            } catch (Throwable t) {
                return false;
            }
        }

        @JavascriptInterface
        public boolean setManualGimbal(float pitchDeg, float rollDeg, float yawDeg, float linearG) {
            try {
                return nativeSetManualGimbal(pitchDeg, rollDeg, yawDeg, linearG);
            } catch (Throwable t) {
                return false;
            }
        }

        @JavascriptInterface
        public boolean setV4l2Config(int pattern, int fps) {
            try {
                return nativeSetV4l2Config(pattern, fps);
            } catch (Throwable t) {
                return false;
            }
        }

        @JavascriptInterface
        public boolean triggerStepBurst(int steps) {
            try {
                return nativeTriggerStepBurst(steps);
            } catch (Throwable t) {
                return false;
            }
        }

        @JavascriptInterface
        public boolean copyToClipboard(final String label, final String text) {
            try {
                android.content.ClipboardManager cm =
                        (android.content.ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
                if (cm != null) {
                    cm.setPrimaryClip(android.content.ClipData.newPlainText(label, text));
                    return true;
                }
            } catch (Throwable ignored) {}
            return false;
        }
    }

    @Override
    public void onBackPressed() {
        if (mWebView != null) {
            mWebView.evaluateJavascript(
                    "(function(){ if(typeof isSheetOpen!=='undefined' && isSheetOpen){ closeExifSheet(); return '1'; } if(typeof tourActive!=='undefined' && tourActive){ stopInteractiveDemo(true); return '1'; } return '0'; })()",
                    val -> {
                        if (!"\"1\"".equals(val)) {
                            if (mWebView.canGoBack()) {
                                mWebView.goBack();
                            } else {
                                MainActivity.super.onBackPressed();
                            }
                        }
                    });
            return;
        }
        super.onBackPressed();
    }
}
