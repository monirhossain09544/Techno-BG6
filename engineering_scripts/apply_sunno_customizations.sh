#!/bin/bash
set -e
cd /nvme0n1-disk/shunno_os

# 1. Inject Sunno Branding into all generated product makefiles
for mk in device/phh/treble/treble_*.mk; do
    [ -f "$mk" ] || continue
    sed -i 's/PRODUCT_BRAND := .*/PRODUCT_BRAND := Sunno/g' "$mk"
    sed -i 's/PRODUCT_SYSTEM_BRAND := .*/PRODUCT_SYSTEM_BRAND := Sunno/g' "$mk"
    sed -i 's/PRODUCT_MODEL := .*/PRODUCT_MODEL := Sunno/g' "$mk"
done

# 2. Enhance rw-system.sh with full Verified Boot / Locked Bootloader / Release-Keys spoofing for Foodpanda & Banking apps
if ! grep -q "ro.boot.vbmeta.device_state" device/phh/treble/rw-system.sh; then
    sed -i '/resetprop_phh ro.boot.flash.locked 1/a \    resetprop_phh ro.boot.vbmeta.device_state locked\n    resetprop_phh ro.build.tags release-keys\n    resetprop_phh ro.build.type user\n    resetprop_phh ro.debuggable 0\n    resetprop_phh ro.secure 1' device/phh/treble/rw-system.sh
fi

# 3. Write Native PDF + TXT + HTML Viewer directly into Android 14 packages/apps/HTMLViewer Java source code
cat > packages/apps/HTMLViewer/AndroidManifest.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
     package="com.android.htmlviewer">
    <original-package android:name="com.android.htmlviewer"/>

    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>

    <application android:label="@string/app_label"
         android:supportsRtl="true"
         android:hardwareAccelerated="true">
        <activity android:name="HTMLViewerActivity"
             android:label="@string/app_label"
             android:theme="@android:style/Theme.DeviceDefault.DayNight"
             android:configChanges="orientation|screenSize|keyboardHidden"
             android:exported="true">
            <intent-filter>
                <category android:name="android.intent.category.DEFAULT"/>
                <category android:name="android.intent.category.BROWSABLE"/>
                <action android:name="android.intent.action.VIEW"/>
                <data android:scheme="content"/>
                <data android:scheme="file"/>
                <data android:mimeType="text/html"/>
                <data android:mimeType="text/plain"/>
                <data android:mimeType="application/xhtml+xml"/>
                <data android:mimeType="application/vnd.wap.xhtml+xml"/>
                <data android:mimeType="application/pdf"/>
            </intent-filter>
        </activity>
        <meta-data android:name="android.nfc.disable_beam_default"
             android:value="true"/>
        <meta-data android:name="android.max_aspect"
             android:value="2.4"/>
    </application>
</manifest>
EOF

cat > packages/apps/HTMLViewer/src/com/android/htmlviewer/HTMLViewerActivity.java << 'EOF'
package com.android.htmlviewer;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.pdf.PdfRenderer;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.provider.Browser;
import android.provider.OpenableColumns;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.util.zip.GZIPInputStream;

public class HTMLViewerActivity extends Activity {
    private static final String TAG = "HTMLViewer";

    private WebView mWebView;
    private View mLoading;
    private Intent mIntent;
    private PdfRenderer mPdfRenderer;
    private ParcelFileDescriptor mPdfFd;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mIntent = getIntent();
        setBackButton();

        Uri data = mIntent != null ? mIntent.getData() : null;
        String mime = mIntent != null ? mIntent.getType() : null;
        if (data != null && (
                "application/pdf".equalsIgnoreCase(mime) ||
                data.toString().toLowerCase().endsWith(".pdf"))) {
            renderPdf(data);
            return;
        }

        setContentView();
        mWebView = findViewById(R.id.webview);
        mLoading = findViewById(R.id.loading);

        mWebView.setWebChromeClient(new ChromeClient());
        mWebView.setWebViewClient(new ViewClient());

        WebSettings s = mWebView.getSettings();
        s.setUseWideViewPort(true);
        s.setSupportZoom(true);
        s.setBuiltInZoomControls(true);
        s.setDisplayZoomControls(false);
        s.setSavePassword(false);
        s.setSaveFormData(false);
        s.setBlockNetworkLoads(true);
        s.setAllowFileAccess(true);
        s.setJavaScriptEnabled(false);
        s.setDefaultTextEncodingName("utf-8");

        loadUrl();
    }

    private void renderPdf(Uri uri) {
        try {
            String title = getFileName(uri);
            if (title != null && !title.isEmpty()) {
                setTitle(title);
            }
            if ("file".equalsIgnoreCase(uri.getScheme()) && uri.getPath() != null) {
                mPdfFd = ParcelFileDescriptor.open(new File(uri.getPath()), ParcelFileDescriptor.MODE_READ_ONLY);
            } else {
                try {
                    mPdfFd = getContentResolver().openFileDescriptor(uri, "r");
                } catch (Exception e) {
                    File tmp = new File(getCacheDir(), "temp_view.pdf");
                    try (InputStream is = getContentResolver().openInputStream(uri);
                         FileOutputStream fos = new FileOutputStream(tmp)) {
                        byte[] buf = new byte[16384];
                        int n;
                        while ((n = is.read(buf)) > 0) {
                            fos.write(buf, 0, n);
                        }
                    }
                    mPdfFd = ParcelFileDescriptor.open(tmp, ParcelFileDescriptor.MODE_READ_ONLY);
                }
            }
            mPdfRenderer = new PdfRenderer(mPdfFd);
            final int pageCount = mPdfRenderer.getPageCount();
            if (title != null) {
                setTitle(title + " (" + pageCount + " pages)");
            }

            ListView listView = new ListView(this);
            listView.setBackgroundColor(Color.parseColor("#202124"));
            listView.setDividerHeight(16);
            DisplayMetrics dm = getResources().getDisplayMetrics();
            final int screenW = dm.widthPixels;

            listView.setAdapter(new BaseAdapter() {
                @Override
                public int getCount() {
                    return pageCount;
                }

                @Override
                public Object getItem(int position) {
                    return position;
                }

                @Override
                public long getItemId(int position) {
                    return position;
                }

                @Override
                public View getView(int position, View convertView, ViewGroup parent) {
                    LinearLayout layout;
                    ImageView iv;
                    TextView tv;
                    if (convertView instanceof LinearLayout) {
                        layout = (LinearLayout) convertView;
                        iv = (ImageView) layout.getChildAt(0);
                        tv = (TextView) layout.getChildAt(1);
                    } else {
                        layout = new LinearLayout(HTMLViewerActivity.this);
                        layout.setOrientation(LinearLayout.VERTICAL);
                        layout.setBackgroundColor(Color.WHITE);
                        iv = new ImageView(HTMLViewerActivity.this);
                        iv.setAdjustViewBounds(true);
                        iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        tv = new TextView(HTMLViewerActivity.this);
                        tv.setGravity(Gravity.CENTER);
                        tv.setPadding(8, 8, 8, 12);
                        tv.setTextColor(Color.DKGRAY);
                        tv.setTextSize(12f);
                        layout.addView(iv, new LinearLayout.LayoutParams(
                                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
                        layout.addView(tv, new LinearLayout.LayoutParams(
                                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
                    }
                    try (PdfRenderer.Page page = mPdfRenderer.openPage(position)) {
                        int w = Math.max(screenW, page.getWidth() * 2);
                        int h = Math.max(1, (int) ((long) w * page.getHeight() / Math.max(1, page.getWidth())));
                        Bitmap bmp = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
                        bmp.eraseColor(Color.WHITE);
                        page.render(bmp, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY);
                        iv.setImageBitmap(bmp);
                        tv.setText("Page " + (position + 1) + " / " + pageCount);
                    } catch (Exception e) {
                        tv.setText("Error rendering page " + (position + 1));
                    }
                    return layout;
                }
            });
            setContentView(listView);
        } catch (Exception e) {
            Log.e(TAG, "Failed to open PDF", e);
            Toast.makeText(this, "Cannot open PDF: " + e.getMessage(), Toast.LENGTH_LONG).show();
            finish();
        }
    }

    private String getFileName(Uri uri) {
        if ("content".equalsIgnoreCase(uri.getScheme())) {
            try (Cursor cursor = getContentResolver().query(uri, null, null, null, null)) {
                if (cursor != null && cursor.moveToFirst()) {
                    int idx = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME);
                    if (idx >= 0) return cursor.getString(idx);
                }
            } catch (Exception ignored) {}
        }
        return uri.getLastPathSegment();
    }

    protected void setContentView() {
        setContentView(R.layout.main);
    }

    private void loadUrl() {
        if (mIntent.hasExtra(Intent.EXTRA_TITLE)) {
            setTitle(mIntent.getStringExtra(Intent.EXTRA_TITLE));
        }
        mWebView.loadUrl(String.valueOf(mIntent.getData()));
    }

    private void setBackButton() {
        if (getActionBar() != null) {
            getActionBar().setDisplayHomeAsUpEnabled(true);
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mWebView != null) {
            mWebView.destroy();
        }
        if (mPdfRenderer != null) {
            try { mPdfRenderer.close(); } catch (Exception ignored) {}
        }
        if (mPdfFd != null) {
            try { mPdfFd.close(); } catch (Exception ignored) {}
        }
    }

    private class ChromeClient extends WebChromeClient {
        @Override
        public void onReceivedTitle(WebView view, String title) {
            if (!getIntent().hasExtra(Intent.EXTRA_TITLE)) {
                HTMLViewerActivity.this.setTitle(title);
            }
        }
    }

    private class ViewClient extends WebViewClient {
        @Override
        public void onPageFinished(WebView view, String url) {
            if (mLoading != null) mLoading.setVisibility(View.GONE);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            String url = request.getUrl().toString();
            Intent intent;
            try {
                intent = Intent.parseUri(url, Intent.URI_INTENT_SCHEME);
            } catch (URISyntaxException ex) {
                Log.w(TAG, "Bad URI " + url + ": " + ex.getMessage());
                Toast.makeText(HTMLViewerActivity.this,
                        R.string.cannot_open_link, Toast.LENGTH_SHORT).show();
                return true;
            }
            intent.addCategory(Intent.CATEGORY_BROWSABLE);
            intent.setComponent(null);
            Intent selector = intent.getSelector();
            if (selector != null) {
                selector.addCategory(Intent.CATEGORY_BROWSABLE);
                selector.setComponent(null);
            }
            intent.putExtra(Browser.EXTRA_APPLICATION_ID,
                            view.getContext().getPackageName());
            try {
                view.getContext().startActivity(intent);
            } catch (ActivityNotFoundException | SecurityException ex) {
                Log.w(TAG, "No application can handle " + url);
                Toast.makeText(HTMLViewerActivity.this,
                        R.string.cannot_open_link, Toast.LENGTH_SHORT).show();
            }
            return true;
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view,
                WebResourceRequest request) {
            final Uri uri = request.getUrl();
            if (ContentResolver.SCHEME_FILE.equals(uri.getScheme())
                    && uri.getPath().endsWith(".gz")) {
                try {
                    final InputStream in = new GZIPInputStream(
                            getContentResolver().openInputStream(uri));
                    final WebResourceResponse resp = new WebResourceResponse(
                            getIntent().getType(), "utf-8", in);
                    resp.setStatusCodeAndReasonPhrase(200, "OK");
                    return resp;
                } catch (IOException e) {
                    Log.w(TAG, "Failed to decompress; falling back", e);
                }
            }
            return null;
        }
    }
}
EOF

chown -R administrator:administrator packages/apps/HTMLViewer device/phh/treble
echo "=== SUNNO CUSTOMIZATIONS APPLIED ==="
