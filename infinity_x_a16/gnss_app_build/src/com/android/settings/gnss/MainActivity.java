package com.android.settings.gnss;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Insets;
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

import java.util.Locale;

public class MainActivity extends Activity {
    private FrameLayout mRootLayout;
    private WebView mWebView;
    private boolean mIsLightMap = false;

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

        mRootLayout = new FrameLayout(this);
        mRootLayout.setBackgroundColor(Color.parseColor("#06080E"));

        mWebView = new WebView(this);
        mWebView.setBackgroundColor(Color.parseColor("#06080E"));
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
        applySystemBarTheme(mIsLightMap);

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
        applySystemBarTheme(mIsLightMap);
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            applySystemBarTheme(mIsLightMap);
        }
    }

    private void applySystemBarTheme(boolean lightMap) {
        mIsLightMap = lightMap;
        Window w = getWindow();
        if (w == null) return;
        int barColor = Color.parseColor(lightMap ? "#ECEAE4" : "#06080E");
        w.setStatusBarColor(barColor);
        w.setNavigationBarColor(barColor);
        if (mRootLayout != null) {
            mRootLayout.setBackgroundColor(barColor);
        }
        if (mWebView != null) {
            mWebView.setBackgroundColor(barColor);
        }
        int flags = View.SYSTEM_UI_FLAG_VISIBLE;
        if (lightMap) {
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
            ic.setSystemBarsAppearance(lightMap ? mask : 0, mask);
        }
    }

    private class Bridge {
        @JavascriptInterface
        public void syncSystemBars(final boolean lightMap) {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    applySystemBarTheme(lightMap);
                }
            });
        }

        @JavascriptInterface
        public void startGnssLock(double lat, double lon, double alt, float acc, boolean jitter) {
            KernelGnssService.sLat = lat;
            KernelGnssService.sLon = lon;
            KernelGnssService.sAlt = alt;
            KernelGnssService.sAcc = acc;
            KernelGnssService.sJitter = jitter;
            Intent i = new Intent(MainActivity.this, KernelGnssService.class);
            i.setAction(KernelGnssService.ACTION_START);
            i.putExtra("lat", lat);
            i.putExtra("lon", lon);
            i.putExtra("alt", alt);
            i.putExtra("acc", acc);
            i.putExtra("jitter", jitter);
            startForegroundService(i);
        }

        @JavascriptInterface
        public void updateGnssCoords(double lat, double lon, double alt, float acc, boolean jitter) {
            KernelGnssService.sLat = lat;
            KernelGnssService.sLon = lon;
            KernelGnssService.sAlt = alt;
            KernelGnssService.sAcc = acc;
            KernelGnssService.sJitter = jitter;
            getSharedPreferences("kernel_gnss", MODE_PRIVATE).edit()
                .putString("lat", String.valueOf(lat))
                .putString("lon", String.valueOf(lon))
                .putFloat("alt", (float) alt)
                .putFloat("acc", acc)
                .apply();
            if (KernelGnssService.sIsRunning) {
                startGnssLock(lat, lon, alt, acc, jitter);
            }
        }

        @JavascriptInterface
        public void setKinematics(boolean cruise, float speedKmh, float bearingDeg, double alt, float acc, boolean jitter) {
            KernelGnssService.sCruiseActive = cruise;
            KernelGnssService.sSpeedKmh = speedKmh;
            KernelGnssService.sBearingDeg = bearingDeg;
            KernelGnssService.sAlt = alt;
            KernelGnssService.sAcc = acc;
            KernelGnssService.sJitter = jitter;
            if (cruise && !KernelGnssService.sIsRunning) {
                startGnssLock(KernelGnssService.sLat, KernelGnssService.sLon, alt, acc, jitter);
            }
        }

        @JavascriptInterface
        public String stopGnssLock() {
            KernelGnssService.restoreRealGpsNow(MainActivity.this);
            Intent i = new Intent(MainActivity.this, KernelGnssService.class);
            i.setAction(KernelGnssService.ACTION_STOP);
            startService(i);
            return String.format(Locale.US, "{\"lat\":%.6f,\"lon\":%.6f}",
                    KernelGnssService.sRealLat, KernelGnssService.sRealLon);
        }

        @JavascriptInterface
        public String getStateJson() {
            SharedPreferences p = getSharedPreferences("kernel_gnss", MODE_PRIVATE);
            boolean act = KernelGnssService.sIsRunning;
            double lat = act ? KernelGnssService.sLat : Double.parseDouble(p.getString("lat", "23.792500"));
            double lon = act ? KernelGnssService.sLon : Double.parseDouble(p.getString("lon", "90.407800"));
            double alt = act ? KernelGnssService.sAlt : p.getFloat("alt", 15.2f);
            float acc = act ? KernelGnssService.sAcc : p.getFloat("acc", 2.6f);
            return String.format(Locale.US,
                    "{\"lat\":%.6f,\"lon\":%.6f,\"alt\":%.1f,\"acc\":%.1f,\"jitter\":%s,\"cruise\":%s,\"speed_kmh\":%.1f,\"bearing_deg\":%.1f,\"active\":%s,\"fixes_pushed\":%d,\"sv_count\":%d,\"mean_cn0\":%.1f}",
                    lat, lon, alt, acc,
                    KernelGnssService.sJitter ? "true" : "false",
                    KernelGnssService.sCruiseActive ? "true" : "false",
                    KernelGnssService.sSpeedKmh,
                    KernelGnssService.sBearingDeg,
                    act ? "true" : "false",
                    KernelGnssService.sFixesPushed,
                    KernelGnssService.sSvCount,
                    KernelGnssService.sMeanCn0);
        }

        @JavascriptInterface
        public boolean copyToClipboard(final String label, final String text) {
            try {
                ClipboardManager cm = (ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
                if (cm != null) {
                    cm.setPrimaryClip(ClipData.newPlainText(label, text));
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
                    "(function(){ if(typeof handleAndroidBack==='function' && handleAndroidBack()){ return '1'; } return '0'; })()",
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
