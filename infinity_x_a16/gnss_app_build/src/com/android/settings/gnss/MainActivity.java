package com.android.settings.gnss;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class MainActivity extends Activity {
    private WebView mWebView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mWebView = new WebView(this);
        setContentView(mWebView);

        WebSettings ws = mWebView.getSettings();
        ws.setJavaScriptEnabled(true);
        ws.setDomStorageEnabled(true);
        ws.setDatabaseEnabled(true);
        ws.setAllowFileAccess(true);
        ws.setMixedContentMode(WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);

        mWebView.setWebViewClient(new WebViewClient());
        mWebView.setWebChromeClient(new WebChromeClient());
        mWebView.addJavascriptInterface(new Bridge(), "AndroidBridge");
        mWebView.loadUrl("file:///android_asset/index.html");
    }

    private class Bridge {
        @JavascriptInterface
        public void startGnssLock(double lat, double lon, double alt, float acc, boolean jitter) {
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
                .putFloat("acc", acc)
                .apply();
            if (KernelGnssService.sIsRunning) {
                startGnssLock(lat, lon, alt, acc, jitter);
            }
        }

        @JavascriptInterface
        public String stopGnssLock() {
            KernelGnssService.restoreRealGpsNow(MainActivity.this);
            Intent i = new Intent(MainActivity.this, KernelGnssService.class);
            i.setAction(KernelGnssService.ACTION_STOP);
            startService(i);
            return "{\"lat\":" + KernelGnssService.sRealLat + ",\"lon\":" + KernelGnssService.sRealLon + "}";
        }

        @JavascriptInterface
        public String getStateJson() {
            SharedPreferences p = getSharedPreferences("kernel_gnss", MODE_PRIVATE);
            String lat = p.getString("lat", "23.792500");
            String lon = p.getString("lon", "90.407800");
            boolean act = KernelGnssService.sIsRunning;
            return "{\"lat\":" + lat + ",\"lon\":" + lon + ",\"active\":" + (act ? "true" : "false") + "}";
        }
    }

    @Override
    public void onBackPressed() {
        if (mWebView != null && mWebView.canGoBack()) {
            mWebView.goBack();
        } else {
            super.onBackPressed();
        }
    }
}
