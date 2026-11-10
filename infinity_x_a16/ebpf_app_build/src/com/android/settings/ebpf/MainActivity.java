package com.android.settings.ebpf;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class MainActivity extends Activity {
    static {
        System.loadLibrary("bg6_ebpf_fw");
    }

    // Native Rust JNI entrypoints (implemented in rust_core/bg6_ebpf_fw_jni/src/lib.rs)
    public native String nativeInitEbpfEngine(String ebpfElfPath);
    public native String nativeGetTelemetryJson();
    public native String nativeGetUidStatsAndRulesJson();
    public native String nativeSetUidFirewallMode(int uid, int mode);
    public native String nativeSetIpBlocked(String ipv4, boolean blocked);
    public native String nativeSetPortBlocked(int port, boolean blocked);
    public native String nativeGetLiveConnectionsJson();

    private FrameLayout mRootLayout;
    private WebView mWebView;
    private boolean mIsLightTheme = false;
    private String mInitJson = "{}";
    private final Map<Integer, String> mUidNameCache = new ConcurrentHashMap<>();
    private final Map<Integer, String> mUidPkgCache = new ConcurrentHashMap<>();
    private final Map<Integer, byte[]> mUidIconPngCache = new ConcurrentHashMap<>();

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

        // Extract #[no_std] Rust eBPF bytecode (bg6_ebpf.o) and initialize Ring-0 JIT + BpfNetMaps
        String elfPath = extractEbpfBytecode();
        try {
            mInitJson = nativeInitEbpfEngine(elfPath);
        } catch (Throwable t) {
            mInitJson = "{\"ok\":false,\"status\":\"" + t.getMessage() + "\"}";
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

        mWebView.setWebViewClient(new WebViewClient() {
            @Override
            public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
                if (request != null && request.getUrl() != null) {
                    Uri u = request.getUrl();
                    if ("ebpf.local".equals(u.getHost()) && u.getPath() != null && u.getPath().startsWith("/icon/")) {
                        try {
                            int uid = Integer.parseInt(u.getPath().substring("/icon/".length()).trim());
                            byte[] png = getUidIconPng(uid);
                            if (png != null && png.length > 0) {
                                return new WebResourceResponse("image/png", "UTF-8", new ByteArrayInputStream(png));
                            }
                        } catch (Exception ignored) {}
                    }
                }
                return super.shouldInterceptRequest(view, request);
            }
        });
        mWebView.setWebChromeClient(new WebChromeClient());
        mWebView.addJavascriptInterface(new Bridge(), "AndroidBridge");
        mWebView.loadUrl("file:///android_asset/index.html");
    }

    @Override
    protected void onResume() {
        super.onResume();
        applySystemBarTheme(mIsLightTheme);
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            applySystemBarTheme(mIsLightTheme);
        }
    }

    private byte[] getUidIconPng(int uid) {
        byte[] cached = mUidIconPngCache.get(uid);
        if (cached != null) return cached;
        try {
            PackageManager pm = getPackageManager();
            Drawable d = null;
            String[] pkgs = pm.getPackagesForUid(uid);
            if (pkgs != null && pkgs.length > 0) {
                ApplicationInfo ai = pm.getApplicationInfo(pkgs[0], 0);
                d = ai.loadIcon(pm);
            }
            if (d == null) {
                d = pm.getDefaultActivityIcon();
            }
            if (d != null) {
                int sz = 96;
                Bitmap bmp = Bitmap.createBitmap(sz, sz, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bmp);
                d.setBounds(0, 0, sz, sz);
                d.draw(canvas);
                ByteArrayOutputStream bos = new ByteArrayOutputStream();
                bmp.compress(Bitmap.CompressFormat.PNG, 100, bos);
                bmp.recycle();
                byte[] bytes = bos.toByteArray();
                mUidIconPngCache.put(uid, bytes);
                return bytes;
            }
        } catch (Exception ignored) {}
        return null;
    }

    private String extractEbpfBytecode() {
        File outFile = new File(getFilesDir(), "bg6_ebpf.o");
        try (InputStream is = getAssets().open("bg6_ebpf.o");
             FileOutputStream fos = new FileOutputStream(outFile)) {
            byte[] buf = new byte[4096];
            int n;
            while ((n = is.read(buf)) > 0) {
                fos.write(buf, 0, n);
            }
        } catch (Exception ignored) {}
        return outFile.getAbsolutePath();
    }

    private void resolveUidInfo(int uid) {
        if (mUidNameCache.containsKey(uid)) return;
        if (uid == 0) {
            mUidNameCache.put(0, "Linux Kernel");
            mUidPkgCache.put(0, "kernel.ring0");
            return;
        }
        if (uid == 1000) {
            mUidNameCache.put(1000, "Android System");
            mUidPkgCache.put(1000, "android.system");
            return;
        }
        if (uid == 1051) {
            mUidNameCache.put(1051, "System DNS & Network");
            mUidPkgCache.put(1051, "system.netd");
            return;
        }
        if (uid == 1073) {
            mUidNameCache.put(1073, "NetworkStack");
            mUidPkgCache.put(1073, "com.android.networkstack");
            return;
        }
        try {
            PackageManager pm = getPackageManager();
            String[] pkgs = pm.getPackagesForUid(uid);
            if (pkgs != null && pkgs.length > 0) {
                String pkg = pkgs[0];
                ApplicationInfo ai = pm.getApplicationInfo(pkg, 0);
                CharSequence label = pm.getApplicationLabel(ai);
                mUidNameCache.put(uid, label != null ? label.toString() : pkg);
                mUidPkgCache.put(uid, pkg);
                return;
            }
        } catch (Exception ignored) {}
        mUidNameCache.put(uid, "System Service " + uid);
        mUidPkgCache.put(uid, "android.uid." + uid);
    }

    private void applySystemBarTheme(boolean lightTheme) {
        mIsLightTheme = lightTheme;
        Window w = getWindow();
        if (w == null) return;
        int barColor = Color.parseColor(lightTheme ? "#ECEAE4" : "#06080E");
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
        public String getInitState() {
            return mInitJson;
        }

        @JavascriptInterface
        public String getTelemetryJson() {
            try {
                return nativeGetTelemetryJson();
            } catch (Throwable t) {
                return "{\"err\":\"" + t.getMessage() + "\"}";
            }
        }

        @JavascriptInterface
        public String getAppsFirewallJson() {
            try {
                String raw = nativeGetUidStatsAndRulesJson();
                JSONArray arr = new JSONArray(raw);
                Map<Integer, JSONObject> byUid = new HashMap<>();

                for (int i = 0; i < arr.length(); i++) {
                    JSONObject o = arr.getJSONObject(i);
                    int uid = o.optInt("uid", -1);
                    if (uid < 0 || uid > 99999) continue;
                    // Skip Android 16 SDK Sandbox shadow UIDs (20000..29999) so the list only shows real apps/services
                    if (uid >= 20000 && uid < 30000) continue;
                    resolveUidInfo(uid);
                    o.put("name", mUidNameCache.get(uid));
                    o.put("pkg", mUidPkgCache.get(uid));
                    o.put("is_user", uid >= 10000 && uid < 20000);
                    byUid.put(uid, o);
                }

                // Include installed user apps so any app can be pre-configured
                PackageManager pm = getPackageManager();
                List<ApplicationInfo> apps = pm.getInstalledApplications(0);
                for (ApplicationInfo ai : apps) {
                    int uid = ai.uid;
                    if (uid < 10000 || byUid.containsKey(uid)) continue;
                    if ((ai.flags & ApplicationInfo.FLAG_SYSTEM) != 0 && (ai.flags & ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) == 0) {
                        continue;
                    }
                    CharSequence label = pm.getApplicationLabel(ai);
                    String name = label != null ? label.toString() : ai.packageName;
                    mUidNameCache.put(uid, name);
                    mUidPkgCache.put(uid, ai.packageName);

                    JSONObject o = new JSONObject();
                    o.put("uid", uid);
                    o.put("name", name);
                    o.put("pkg", ai.packageName);
                    o.put("rx_bytes", 0L);
                    o.put("tx_bytes", 0L);
                    o.put("rx_pkts", 0L);
                    o.put("tx_pkts", 0L);
                    o.put("rule", 0);
                    o.put("iif", 0);
                    o.put("mode", 0);
                    o.put("is_user", true);
                    byUid.put(uid, o);
                }

                JSONArray out = new JSONArray();
                for (JSONObject o : byUid.values()) {
                    out.put(o);
                }
                return out.toString();
            } catch (Throwable t) {
                return "[]";
            }
        }

        @JavascriptInterface
        public String setAppFirewallMode(int uid, int mode) {
            try {
                return nativeSetUidFirewallMode(uid, mode);
            } catch (Throwable t) {
                return "{\"ok\":false}";
            }
        }

        @JavascriptInterface
        public String resetAllFirewallRules() {
            try {
                return nativeSetUidFirewallMode(-1, 0);
            } catch (Throwable t) {
                return "{\"ok\":false}";
            }
        }

        @JavascriptInterface
        public String setIpBlocked(String ipOrDomain, boolean blocked) {
            try {
                String target = ipOrDomain != null ? ipOrDomain.trim() : "";
                if (target.isEmpty()) return "{\"ok\":false}";
                if (target.matches("^\\d+\\.\\d+\\.\\d+\\.\\d+$")) {
                    return nativeSetIpBlocked(target, blocked);
                }
                InetAddress[] addrs = InetAddress.getAllByName(target);
                JSONArray blockedIps = new JSONArray();
                boolean anyOk = false;
                for (InetAddress a : addrs) {
                    if (a instanceof Inet4Address) {
                        String ip = a.getHostAddress();
                        String r = nativeSetIpBlocked(ip, blocked);
                        if (r.contains("\"ok\":true")) {
                            anyOk = true;
                            blockedIps.put(ip);
                        }
                    }
                }
                JSONObject res = new JSONObject();
                res.put("ok", anyOk);
                res.put("domain", target);
                res.put("ips", blockedIps);
                return res.toString();
            } catch (Throwable t) {
                return "{\"ok\":false,\"err\":\"" + t.getMessage() + "\"}";
            }
        }

        @JavascriptInterface
        public String setPortBlocked(int port, boolean blocked) {
            try {
                return nativeSetPortBlocked(port, blocked);
            } catch (Throwable t) {
                return "{\"ok\":false}";
            }
        }

        @JavascriptInterface
        public String getLiveConnectionsJson() {
            try {
                String raw = nativeGetLiveConnectionsJson();
                JSONArray arr = new JSONArray(raw);
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject o = arr.getJSONObject(i);
                    int uid = o.optInt("uid", 0);
                    resolveUidInfo(uid);
                    o.put("app_name", mUidNameCache.get(uid));
                    o.put("pkg", mUidPkgCache.get(uid));
                }
                return arr.toString();
            } catch (Throwable t) {
                return "[]";
            }
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
