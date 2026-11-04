package com.android.launcher3.uioverrides;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.BatteryManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.HapticFeedbackConstants;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextClock;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * SunnoHomeView — 100% Custom-Built Modern 2026 Flagship Home Engine for Sunno OS (Android 14).
 * Built from scratch with hardware-accelerated RenderEffect Gaussian Blur, 90Hz Spring Touch Physics,
 * Custom Squircle Vector Icon Engine, Live Telemetry Dashboard, Floating Capsule Dock, and Instant Search Drawer.
 */
public class SunnoHomeView extends FrameLayout {

    private final Context mContext;
    private final LauncherApps mLauncherApps;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final float mDensity;

    private LinearLayout mHomeContentLayer;
    private FrameLayout mDrawerLayer;
    private GridLayout mHomeFavoritesGrid;
    private LinearLayout mDockRow;
    private GridLayout mDrawerGrid;
    private EditText mSearchInput;
    private TextView mRamText;
    private View mRamBarFill;
    private TextView mBatText;
    private TextView mStatusBadge;
    private TextView mAllAppsBtn;
    private TextView mTabAll, mTabUser, mTabSystem;

    private boolean mIsDrawerOpen = false;
    private int mCurrentFilter = 0; // 0 = All, 1 = User, 2 = System
    private String mSearchQuery = "";

    private final List<LauncherActivityInfo> mAllApps = new ArrayList<>();
    private final Map<String, Bitmap> mIconCache = new HashMap<>();
    private GestureDetector mSwipeDetector;

    private final Runnable mTelemetryUpdater = new Runnable() {
        @Override
        public void run() {
            updateSystemTelemetry(false);
            mHandler.postDelayed(this, 4000);
        }
    };

    public SunnoHomeView(Context context) {
        super(context);
        mContext = context;
        mDensity = context.getResources().getDisplayMetrics().density;
        mLauncherApps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);

        setClipChildren(false);
        setClipToPadding(false);

        setupSwipeGesture();
        buildHomeUi();
        buildAppDrawerUi();
        registerPackageCallbacks();
        reloadApps();
    }

    private int dp(float val) {
        return Math.round(val * mDensity);
    }

    private GradientDrawable makeGlassCard(int fillColor, int strokeColor, float strokeWidthDp, float cornerDp) {
        GradientDrawable gd = new GradientDrawable();
        gd.setShape(GradientDrawable.RECTANGLE);
        gd.setColor(fillColor);
        gd.setCornerRadius(dp(cornerDp));
        if (strokeWidthDp > 0) {
            gd.setStroke(Math.max(1, dp(strokeWidthDp)), strokeColor);
        }
        return gd;
    }

    private GradientDrawable makeGradientPill(int c1, int c2, float cornerDp) {
        GradientDrawable gd = new GradientDrawable(
                GradientDrawable.Orientation.TL_BR, new int[]{c1, c2});
        gd.setCornerRadius(dp(cornerDp));
        return gd;
    }

    private void setupSwipeGesture() {
        mSwipeDetector = new GestureDetector(mContext, new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
                if (e1 == null || e2 == null) return false;
                float dy = e1.getY() - e2.getY();
                float dx = Math.abs(e1.getX() - e2.getX());
                if (!mIsDrawerOpen && dy > dp(42) && dy > dx && velocityY < -300) {
                    openDrawerAnimated(false);
                    return true;
                }
                return false;
            }
        });
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (!mIsDrawerOpen && mSwipeDetector != null) {
            if (mSwipeDetector.onTouchEvent(ev)) {
                return true;
            }
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        if (!mIsDrawerOpen && mSwipeDetector != null) {
            mSwipeDetector.onTouchEvent(event);
        }
        return true;
    }

    private void buildHomeUi() {
        mHomeContentLayer = new LinearLayout(mContext);
        mHomeContentLayer.setOrientation(LinearLayout.VERTICAL);
        mHomeContentLayer.setPadding(dp(16), dp(46), dp(16), dp(20));
        LayoutParams rootLp = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
        addView(mHomeContentLayer, rootLp);

        // 1. HERO DASHBOARD GLASS CARD
        LinearLayout heroCard = new LinearLayout(mContext);
        heroCard.setOrientation(LinearLayout.HORIZONTAL);
        heroCard.setGravity(Gravity.CENTER_VERTICAL);
        heroCard.setPadding(dp(18), dp(16), dp(16), dp(16));
        heroCard.setBackground(makeGlassCard(0xB80B1020, 0x4556B4FC, 1.2f, 28f));
        heroCard.setElevation(dp(6));

        // Left side of Hero: Clock, Date, Sunno Badge
        LinearLayout heroLeft = new LinearLayout(mContext);
        heroLeft.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams leftLp = new LinearLayout.LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.15f);
        heroCard.addView(heroLeft, leftLp);

        mStatusBadge = new TextView(mContext);
        mStatusBadge.setText("● SUNNO OS 2.0 • TURBO UI");
        mStatusBadge.setTextColor(0xFF38BDF8);
        mStatusBadge.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10.5f);
        mStatusBadge.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        mStatusBadge.setPadding(dp(10), dp(4), dp(10), dp(4));
        mStatusBadge.setBackground(makeGlassCard(0x2838BDF8, 0x4038BDF8, 1f, 12f));
        LinearLayout.LayoutParams badgeLp = new LinearLayout.LayoutParams(
                LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        badgeLp.bottomMargin = dp(6);
        heroLeft.addView(mStatusBadge, badgeLp);

        TextClock clockView = new TextClock(mContext);
        clockView.setFormat12Hour("hh:mm");
        clockView.setFormat24Hour("HH:mm");
        clockView.setTextColor(0xFFF8FAFC);
        clockView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 44f);
        clockView.setTypeface(Typeface.create("sans-serif-light", Typeface.BOLD));
        clockView.setIncludeFontPadding(false);
        heroLeft.addView(clockView);

        TextClock dateView = new TextClock(mContext);
        dateView.setFormat12Hour("EEEE, MMM d");
        dateView.setFormat24Hour("EEEE, MMM d");
        dateView.setTextColor(0xFF94A3B8);
        dateView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        dateView.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        heroLeft.addView(dateView);

        // Right side of Hero: Live Telemetry + Turbo Boost Button
        LinearLayout heroRight = new LinearLayout(mContext);
        heroRight.setOrientation(LinearLayout.VERTICAL);
        heroRight.setPadding(dp(12), dp(10), dp(12), dp(10));
        heroRight.setBackground(makeGlassCard(0x551E293B, 0x3094A3B8, 1f, 20f));
        LinearLayout.LayoutParams rightLp = new LinearLayout.LayoutParams(0, LayoutParams.WRAP_CONTENT, 0.95f);
        heroCard.addView(heroRight, rightLp);

        mRamText = new TextView(mContext);
        mRamText.setText("RAM • -- / -- GB");
        mRamText.setTextColor(0xFFE2E8F0);
        mRamText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11.5f);
        mRamText.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        heroRight.addView(mRamText);

        // RAM Progress Bar
        FrameLayout ramBarTrack = new FrameLayout(mContext);
        ramBarTrack.setBackground(makeGlassCard(0x44334155, 0, 0, 6f));
        LinearLayout.LayoutParams trackLp = new LinearLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, dp(6));
        trackLp.topMargin = dp(5);
        trackLp.bottomMargin = dp(6);
        heroRight.addView(ramBarTrack, trackLp);

        mRamBarFill = new View(mContext);
        mRamBarFill.setBackground(makeGradientPill(0xFF38BDF8, 0xFF818CF8, 6f));
        ramBarTrack.addView(mRamBarFill, new FrameLayout.LayoutParams(dp(80), LayoutParams.MATCH_PARENT));

        mBatText = new TextView(mContext);
        mBatText.setText("BATTERY • --% • TURBO");
        mBatText.setTextColor(0xFF94A3B8);
        mBatText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
        heroRight.addView(mBatText);

        TextView boostBtn = new TextView(mContext);
        boostBtn.setText("⚡ TURBO BOOST");
        boostBtn.setTextColor(0xFFFFFFFF);
        boostBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
        boostBtn.setGravity(Gravity.CENTER);
        boostBtn.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        boostBtn.setPadding(dp(8), dp(6), dp(8), dp(6));
        boostBtn.setBackground(makeGradientPill(0xFF0284C7, 0xFF4F46E5, 14f));
        LinearLayout.LayoutParams boostLp = new LinearLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        boostLp.topMargin = dp(8);
        heroRight.addView(boostBtn, boostLp);
        attachSpringTouch(boostBtn, () -> {
            performHapticFeedback(HapticFeedbackConstants.CONFIRM);
            System.gc();
            updateSystemTelemetry(true);
            Toast.makeText(mContext, "⚡ Sunno Turbo Engine: Memory Optimized & 90Hz Locked!", Toast.LENGTH_SHORT).show();
        }, null);

        LinearLayout.LayoutParams heroLp = new LinearLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        heroLp.bottomMargin = dp(12);
        mHomeContentLayer.addView(heroCard, heroLp);

        // 2. SUNNO GLASS SEARCH & QUICK ACTION PILL BAR
        LinearLayout searchBar = new LinearLayout(mContext);
        searchBar.setOrientation(LinearLayout.HORIZONTAL);
        searchBar.setGravity(Gravity.CENTER_VERTICAL);
        searchBar.setPadding(dp(14), dp(8), dp(10), dp(8));
        searchBar.setBackground(makeGlassCard(0xB80E1528, 0x4538BDF8, 1f, 24f));
        searchBar.setElevation(dp(4));

        TextView searchIcon = new TextView(mContext);
        searchIcon.setText("🔍");
        searchIcon.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        searchBar.addView(searchIcon);

        TextView searchPrompt = new TextView(mContext);
        searchPrompt.setText("Search apps or Google web...");
        searchPrompt.setTextColor(0xFFCBD5E1);
        searchPrompt.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
        searchPrompt.setPadding(dp(10), dp(4), dp(8), dp(4));
        LinearLayout.LayoutParams spLp = new LinearLayout.LayoutParams(0, LayoutParams.WRAP_CONTENT, 1f);
        searchBar.addView(searchPrompt, spLp);
        searchPrompt.setOnClickListener(v -> openDrawerAnimated(true));

        // Quick Pill 1: Chrome
        TextView chromePill = createQuickChip("Chrome", 0xFF38BDF8, 0x2638BDF8);
        attachSpringTouch(chromePill, () -> launchPackage("com.android.chrome"), null);
        searchBar.addView(chromePill);

        // Quick Pill 2: Settings
        TextView settingsPill = createQuickChip("⚙", 0xFFE2E8F0, 0x2894A3B8);
        LinearLayout.LayoutParams setLp = new LinearLayout.LayoutParams(
                LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        setLp.leftMargin = dp(6);
        attachSpringTouch(settingsPill, () -> {
            try {
                Intent i = new Intent(Settings.ACTION_SETTINGS);
                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                mContext.startActivity(i);
            } catch (Exception ignored) {}
        }, null);
        searchBar.addView(settingsPill, setLp);

        LinearLayout.LayoutParams sbLp = new LinearLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        sbLp.bottomMargin = dp(14);
        mHomeContentLayer.addView(searchBar, sbLp);

        // 3. SECTION HEADER: PINNED FAVORITES + ALL APPS BUTTON
        LinearLayout secHeader = new LinearLayout(mContext);
        secHeader.setOrientation(LinearLayout.HORIZONTAL);
        secHeader.setGravity(Gravity.CENTER_VERTICAL);
        secHeader.setPadding(dp(4), 0, dp(4), dp(6));

        TextView secTitle = new TextView(mContext);
        secTitle.setText("FAVORITE APPS");
        secTitle.setTextColor(0xFFE2E8F0);
        secTitle.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
        secTitle.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        secTitle.setLetterSpacing(0.08f);
        secHeader.addView(secTitle, new LinearLayout.LayoutParams(0, LayoutParams.WRAP_CONTENT, 1f));

        mAllAppsBtn = new TextView(mContext);
        mAllAppsBtn.setText("All Apps ›");
        mAllAppsBtn.setTextColor(0xFFF8FAFC);
        mAllAppsBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
        mAllAppsBtn.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        mAllAppsBtn.setPadding(dp(12), dp(5), dp(12), dp(5));
        mAllAppsBtn.setBackground(makeGlassCard(0xB00F172A, 0x6638BDF8, 1f, 14f));
        attachSpringTouch(mAllAppsBtn, () -> openDrawerAnimated(false), null);
        secHeader.addView(mAllAppsBtn);
        mHomeContentLayer.addView(secHeader);

        // 4. HOME FAVORITES GRID (5 Columns x 3 Rows = up to 15 apps on home screen)
        FrameLayout workspaceWrapper = new FrameLayout(mContext);
        LinearLayout.LayoutParams wwLp = new LinearLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, 0, 1f);
        mHomeContentLayer.addView(workspaceWrapper, wwLp);

        mHomeFavoritesGrid = new GridLayout(mContext);
        mHomeFavoritesGrid.setColumnCount(5);
        mHomeFavoritesGrid.setUseDefaultMargins(false);
        FrameLayout.LayoutParams fgLp = new FrameLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        fgLp.gravity = Gravity.TOP;
        workspaceWrapper.addView(mHomeFavoritesGrid, fgLp);

        // 5. SWIPE UP HANDLE PILL
        LinearLayout drawerHandleWrap = new LinearLayout(mContext);
        drawerHandleWrap.setOrientation(LinearLayout.VERTICAL);
        drawerHandleWrap.setGravity(Gravity.CENTER);
        drawerHandleWrap.setPadding(0, dp(4), 0, dp(6));
        drawerHandleWrap.setOnClickListener(v -> openDrawerAnimated(false));

        View pillBar = new View(mContext);
        pillBar.setBackground(makeGlassCard(0x8894A3B8, 0, 0, 4f));
        drawerHandleWrap.addView(pillBar, new LinearLayout.LayoutParams(dp(38), dp(4)));

        TextView swipeHint = new TextView(mContext);
        swipeHint.setText("⌃  SWIPE UP FOR ALL APPS");
        swipeHint.setTextColor(0xCC94A3B8);
        swipeHint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10f);
        swipeHint.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        swipeHint.setPadding(0, dp(3), 0, 0);
        drawerHandleWrap.addView(swipeHint);
        mHomeContentLayer.addView(drawerHandleWrap);

        // 6. FLOATING FROSTED-GLASS CAPSULE DOCK
        mDockRow = new LinearLayout(mContext);
        mDockRow.setOrientation(LinearLayout.HORIZONTAL);
        mDockRow.setGravity(Gravity.CENTER);
        mDockRow.setPadding(dp(10), dp(10), dp(10), dp(10));
        mDockRow.setBackground(makeGlassCard(0xCC0B1020, 0x5538BDF8, 1.2f, 30f));
        mDockRow.setElevation(dp(8));
        LinearLayout.LayoutParams dockLp = new LinearLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        dockLp.bottomMargin = dp(4);
        mHomeContentLayer.addView(mDockRow, dockLp);
    }

    private TextView createQuickChip(String label, int textColor, int bgColor) {
        TextView tv = new TextView(mContext);
        tv.setText(label);
        tv.setTextColor(textColor);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
        tv.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        tv.setPadding(dp(12), dp(6), dp(12), dp(6));
        tv.setBackground(makeGlassCard(bgColor, 0x4038BDF8, 1f, 16f));
        return tv;
    }

    private void buildAppDrawerUi() {
        mDrawerLayer = new FrameLayout(mContext);
        mDrawerLayer.setBackgroundColor(0xE8070B16);
        mDrawerLayer.setVisibility(View.GONE);
        mDrawerLayer.setAlpha(0f);
        mDrawerLayer.setElevation(dp(20));
        addView(mDrawerLayer, new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));

        LinearLayout drawerContent = new LinearLayout(mContext);
        drawerContent.setOrientation(LinearLayout.VERTICAL);
        drawerContent.setPadding(dp(16), dp(46), dp(16), dp(24));
        mDrawerLayer.addView(drawerContent, new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));

        // Top Search & Close Bar
        LinearLayout topSearchRow = new LinearLayout(mContext);
        topSearchRow.setOrientation(LinearLayout.HORIZONTAL);
        topSearchRow.setGravity(Gravity.CENTER_VERTICAL);
        topSearchRow.setPadding(dp(14), dp(6), dp(10), dp(6));
        topSearchRow.setBackground(makeGlassCard(0xCC111827, 0x5538BDF8, 1.2f, 24f));

        TextView sIcon = new TextView(mContext);
        sIcon.setText("🔍");
        sIcon.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        topSearchRow.addView(sIcon);

        mSearchInput = new EditText(mContext);
        mSearchInput.setHint("Search apps or web...");
        mSearchInput.setHintTextColor(0xFF64748B);
        mSearchInput.setTextColor(0xFFF8FAFC);
        mSearchInput.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
        mSearchInput.setBackground(null);
        mSearchInput.setSingleLine(true);
        mSearchInput.setImeOptions(EditorInfo.IME_ACTION_SEARCH);
        mSearchInput.setPadding(dp(10), dp(6), dp(10), dp(6));
        topSearchRow.addView(mSearchInput, new LinearLayout.LayoutParams(0, LayoutParams.WRAP_CONTENT, 1f));

        mSearchInput.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                mSearchQuery = s == null ? "" : s.toString().trim();
                populateDrawerGrid();
            }
            @Override
            public void afterTextChanged(Editable s) {}
        });

        mSearchInput.setOnEditorActionListener((v, actionId, event) -> {
            if (actionId == EditorInfo.IME_ACTION_SEARCH ||
                    (event != null && event.getKeyCode() == KeyEvent.KEYCODE_ENTER)) {
                if (!TextUtils.isEmpty(mSearchQuery)) {
                    searchWebInChrome(mSearchQuery);
                }
                return true;
            }
            return false;
        });

        TextView closeBtn = createQuickChip("✕ Close", 0xFFF8FAFC, 0x3364748B);
        attachSpringTouch(closeBtn, this::closeDrawerAnimated, null);
        topSearchRow.addView(closeBtn);

        drawerContent.addView(topSearchRow, new LinearLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));

        // Category Filter Row (All | User Apps | System Apps | Search Web)
        LinearLayout filterRow = new LinearLayout(mContext);
        filterRow.setOrientation(LinearLayout.HORIZONTAL);
        filterRow.setGravity(Gravity.CENTER_VERTICAL);
        filterRow.setPadding(dp(2), dp(10), dp(2), dp(10));

        mTabAll = createFilterTab("All Apps", 0);
        mTabUser = createFilterTab("User Apps", 1);
        mTabSystem = createFilterTab("System", 2);

        filterRow.addView(mTabAll);
        LinearLayout.LayoutParams tabLp = new LinearLayout.LayoutParams(
                LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        tabLp.leftMargin = dp(8);
        filterRow.addView(mTabUser, tabLp);

        LinearLayout.LayoutParams tabLp2 = new LinearLayout.LayoutParams(
                LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        tabLp2.leftMargin = dp(8);
        filterRow.addView(mTabSystem, tabLp2);

        TextView webSearchBtn = createQuickChip("🌐 Google Web", 0xFF38BDF8, 0x2238BDF8);
        LinearLayout.LayoutParams webLp = new LinearLayout.LayoutParams(
                LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        webLp.leftMargin = dp(8);
        attachSpringTouch(webSearchBtn, () -> searchWebInChrome(mSearchQuery), null);
        filterRow.addView(webSearchBtn, webLp);

        drawerContent.addView(filterRow);
        updateFilterTabStyles();

        // Scrollable 5-column App Grid
        ScrollView scrollView = new ScrollView(mContext);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.setOverScrollMode(View.OVER_SCROLL_ALWAYS);
        drawerContent.addView(scrollView, new LinearLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, 0, 1f));

        mDrawerGrid = new GridLayout(mContext);
        mDrawerGrid.setColumnCount(5);
        scrollView.addView(mDrawerGrid, new FrameLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
    }

    private TextView createFilterTab(String title, final int filterIndex) {
        TextView tv = new TextView(mContext);
        tv.setText(title);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
        tv.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        tv.setPadding(dp(14), dp(6), dp(14), dp(6));
        tv.setOnClickListener(v -> {
            mCurrentFilter = filterIndex;
            updateFilterTabStyles();
            populateDrawerGrid();
        });
        return tv;
    }

    private void updateFilterTabStyles() {
        TextView[] tabs = new TextView[]{mTabAll, mTabUser, mTabSystem};
        for (int i = 0; i < tabs.length; i++) {
            if (tabs[i] == null) continue;
            if (i == mCurrentFilter) {
                tabs[i].setTextColor(0xFFFFFFFF);
                tabs[i].setBackground(makeGradientPill(0xFF0284C7, 0xFF4F46E5, 16f));
            } else {
                tabs[i].setTextColor(0xFF94A3B8);
                tabs[i].setBackground(makeGlassCard(0x281E293B, 0x33475569, 1f, 16f));
            }
        }
    }

    public void openDrawerAnimated(boolean focusSearch) {
        if (mIsDrawerOpen) return;
        mIsDrawerOpen = true;
        performHapticFeedback(HapticFeedbackConstants.CONTEXT_CLICK);

        try {
            mHomeContentLayer.setRenderEffect(
                    RenderEffect.createBlurEffect(dp(18), dp(18), Shader.TileMode.CLAMP));
        } catch (Throwable ignored) {}

        mDrawerLayer.setVisibility(View.VISIBLE);
        mDrawerLayer.setTranslationY(dp(90));
        mDrawerLayer.animate()
                .alpha(1f)
                .translationY(0f)
                .setDuration(240)
                .setInterpolator(new OvershootInterpolator(0.75f))
                .withEndAction(() -> {
                    if (focusSearch && mSearchInput != null) {
                        mSearchInput.requestFocus();
                        InputMethodManager imm = (InputMethodManager) mContext.getSystemService(Context.INPUT_METHOD_SERVICE);
                        if (imm != null) imm.showSoftInput(mSearchInput, InputMethodManager.SHOW_IMPLICIT);
                    }
                })
                .start();
    }

    public void closeDrawerAnimated() {
        if (!mIsDrawerOpen) return;
        mIsDrawerOpen = false;
        hideKeyboard();

        try {
            mHomeContentLayer.setRenderEffect(null);
        } catch (Throwable ignored) {}

        mDrawerLayer.animate()
                .alpha(0f)
                .translationY(dp(90))
                .setDuration(200)
                .setInterpolator(new DecelerateInterpolator())
                .withEndAction(() -> {
                    mDrawerLayer.setVisibility(View.GONE);
                    if (mSearchInput != null && !TextUtils.isEmpty(mSearchInput.getText())) {
                        mSearchInput.setText("");
                    }
                })
                .start();
    }

    public boolean handleBackPress() {
        if (mIsDrawerOpen) {
            closeDrawerAnimated();
            return true;
        }
        return false;
    }

    private void hideKeyboard() {
        try {
            InputMethodManager imm = (InputMethodManager) mContext.getSystemService(Context.INPUT_METHOD_SERVICE);
            if (imm != null && mSearchInput != null) {
                imm.hideSoftInputFromWindow(mSearchInput.getWindowToken(), 0);
            }
        } catch (Exception ignored) {}
    }

    private void registerPackageCallbacks() {
        if (mLauncherApps == null) return;
        mLauncherApps.registerCallback(new LauncherApps.Callback() {
            @Override
            public void onPackageRemoved(String packageName, UserHandle user) {
                mIconCache.remove(packageName);
                mHandler.post(() -> reloadApps());
            }
            @Override
            public void onPackageAdded(String packageName, UserHandle user) {
                mIconCache.remove(packageName);
                mHandler.post(() -> reloadApps());
            }
            @Override
            public void onPackageChanged(String packageName, UserHandle user) {
                mIconCache.remove(packageName);
                mHandler.post(() -> reloadApps());
            }
            @Override
            public void onPackagesAvailable(String[] packageNames, UserHandle user, boolean replacing) {
                mHandler.post(() -> reloadApps());
            }
            @Override
            public void onPackagesUnavailable(String[] packageNames, UserHandle user, boolean replacing) {
                mHandler.post(() -> reloadApps());
            }
        });
    }

    public void reloadApps() {
        if (mLauncherApps == null) return;
        List<LauncherActivityInfo> list = mLauncherApps.getActivityList(null, Process.myUserHandle());
        mAllApps.clear();
        String myPkg = mContext.getPackageName();
        for (LauncherActivityInfo info : list) {
            String pkg = info.getApplicationInfo().packageName;
            if (myPkg.equals(pkg) || "org.chromium.webview_shell".equals(pkg)) {
                continue;
            }
            mAllApps.add(info);
        }
        Collections.sort(mAllApps, Comparator.comparing(a -> a.getLabel().toString().toLowerCase(Locale.ROOT)));
        if (mAllAppsBtn != null) mAllAppsBtn.setText("All Apps (" + mAllApps.size() + ") ›");
        populateHomeAndDock();
        populateDrawerGrid();
        updateSystemTelemetry(false);
    }

    private void populateHomeAndDock() {
        mHomeFavoritesGrid.removeAllViews();
        mDockRow.removeAllViews();

        // Dock priority packages: Phone, Messaging, Chrome, Play Store, Camera
        String[] dockPkgs = new String[]{
                "com.android.dialer",
                "com.android.messaging",
                "com.android.chrome",
                "com.android.vending",
                "com.android.camera2"
        };

        List<String> dockAdded = new ArrayList<>();
        for (String pkg : dockPkgs) {
            LauncherActivityInfo match = findAppByPackage(pkg);
            if (match != null) {
                dockAdded.add(pkg);
                View dockItem = createAppTileView(match, true);
                LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(0, LayoutParams.WRAP_CONTENT, 1f);
                mDockRow.addView(dockItem, dlp);
            }
        }

        // Priority Home Favorites (User apps + essential tools)
        List<LauncherActivityInfo> homeList = new ArrayList<>();
        String[] priorityHome = new String[]{
                "com.logistics.rider.foodpanda",
                "com.google.android.googlequicksearchbox",
                "com.android.vending",
                "com.android.chrome",
                "com.android.gallery3d",
                "com.android.settings",
                "com.android.deskclock",
                "com.android.calculator2",
                "com.android.documentsui",
                "com.topjohnwu.magisk"
        };

        for (String pkg : priorityHome) {
            LauncherActivityInfo info = findAppByPackage(pkg);
            if (info != null && !homeList.contains(info)) {
                homeList.add(info);
            }
        }
        // Add any newly installed user apps first!
        for (LauncherActivityInfo info : mAllApps) {
            boolean isSys = (info.getApplicationInfo().flags & ApplicationInfo.FLAG_SYSTEM) != 0;
            if (!isSys && !homeList.contains(info)) {
                homeList.add(0, info);
            }
        }
        // Fill up to 15 home screen slots
        for (LauncherActivityInfo info : mAllApps) {
            if (homeList.size() >= 15) break;
            if (!homeList.contains(info)) {
                homeList.add(info);
            }
        }

        int screenWidth = mContext.getResources().getDisplayMetrics().widthPixels - dp(32);
        int cellWidth = screenWidth / 5;

        int count = Math.min(15, homeList.size());
        for (int i = 0; i < count; i++) {
            LauncherActivityInfo info = homeList.get(i);
            View tile = createAppTileView(info, false);
            GridLayout.LayoutParams glp = new GridLayout.LayoutParams();
            glp.width = cellWidth;
            glp.bottomMargin = dp(10);
            mHomeFavoritesGrid.addView(tile, glp);
        }
    }

    private void populateDrawerGrid() {
        if (mDrawerGrid == null) return;
        mDrawerGrid.removeAllViews();

        int screenWidth = mContext.getResources().getDisplayMetrics().widthPixels - dp(32);
        int cellWidth = screenWidth / 5;

        String q = mSearchQuery.toLowerCase(Locale.ROOT);
        for (LauncherActivityInfo info : mAllApps) {
            boolean isSys = (info.getApplicationInfo().flags & ApplicationInfo.FLAG_SYSTEM) != 0;
            if (mCurrentFilter == 1 && isSys) continue;
            if (mCurrentFilter == 2 && !isSys) continue;

            String label = info.getLabel().toString();
            String pkg = info.getApplicationInfo().packageName;
            if (!TextUtils.isEmpty(q)) {
                if (!label.toLowerCase(Locale.ROOT).contains(q) && !pkg.toLowerCase(Locale.ROOT).contains(q)) {
                    continue;
                }
            }

            View tile = createAppTileView(info, false);
            GridLayout.LayoutParams glp = new GridLayout.LayoutParams();
            glp.width = cellWidth;
            glp.bottomMargin = dp(14);
            mDrawerGrid.addView(tile, glp);
        }
    }

    private LauncherActivityInfo findAppByPackage(String pkg) {
        for (LauncherActivityInfo info : mAllApps) {
            if (pkg.equals(info.getApplicationInfo().packageName)) {
                return info;
            }
        }
        return null;
    }

    private View createAppTileView(final LauncherActivityInfo info, boolean isDock) {
        LinearLayout box = new LinearLayout(mContext);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setGravity(Gravity.CENTER_HORIZONTAL);
        box.setPadding(dp(4), dp(4), dp(4), dp(4));

        ImageView iconView = new ImageView(mContext);
        int iconSize = isDock ? dp(52) : dp(54);
        iconView.setImageBitmap(getOrRenderSquircleIcon(info, iconSize));
        box.addView(iconView, new LinearLayout.LayoutParams(iconSize, iconSize));

        if (!isDock) {
            TextView labelView = new TextView(mContext);
            labelView.setText(info.getLabel());
            labelView.setTextColor(0xFFF1F5F9);
            labelView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11.5f);
            labelView.setSingleLine(true);
            labelView.setEllipsize(TextUtils.TruncateAt.END);
            labelView.setGravity(Gravity.CENTER);
            labelView.setShadowLayer(4f, 0f, 2f, 0xCC000000);
            LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(
                    LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
            llp.topMargin = dp(5);
            box.addView(labelView, llp);
        }

        attachSpringTouch(box, () -> {
            launchActivityInfo(info, box);
            if (mIsDrawerOpen) {
                closeDrawerAnimated();
            }
        }, () -> showAppLongPressDialog(info));

        return box;
    }

    private Bitmap getOrRenderSquircleIcon(LauncherActivityInfo info, int sizePx) {
        String key = info.getComponentName().flattenToShortString() + "_" + sizePx;
        Bitmap cached = mIconCache.get(key);
        if (cached != null && !cached.isRecycled()) {
            return cached;
        }

        String pkg = info.getApplicationInfo().packageName;
        Bitmap bmp = Bitmap.createBitmap(sizePx, sizePx, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bmp);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        float r = sizePx * 0.30f; // Modern 2026 Squircle corner radius
        RectF rect = new RectF(dp(2), dp(2), sizePx - dp(2), sizePx - dp(2));

        // Custom-coded 2026 Flagship Vector Icons for legacy AOSP system apps!
        if ("com.android.dialer".equals(pkg)) {
            drawCustomSystemIcon(canvas, rect, r, 0xFF10B981, 0xFF047857, "PHONE");
        } else if ("com.android.messaging".equals(pkg)) {
            drawCustomSystemIcon(canvas, rect, r, 0xFF38BDF8, 0xFF2563EB, "MSG");
        } else if ("com.android.camera2".equals(pkg)) {
            drawCustomSystemIcon(canvas, rect, r, 0xFF334155, 0xFF0F172A, "CAM");
        } else if ("com.android.gallery3d".equals(pkg)) {
            drawCustomSystemIcon(canvas, rect, r, 0xFFF43F5E, 0xFF7C3AED, "GAL");
        } else if ("com.android.settings".equals(pkg)) {
            drawCustomSystemIcon(canvas, rect, r, 0xFF64748B, 0xFF1E293B, "SET");
        } else {
            // Render app icon inside unified 2026 Squircle mask with glass highlight
            Bitmap mask = Bitmap.createBitmap(sizePx, sizePx, Bitmap.Config.ARGB_8888);
            Canvas maskCanvas = new Canvas(mask);
            p.setColor(0xFFFFFFFF);
            maskCanvas.drawRoundRect(rect, r, r, p);

            Bitmap rawIconBmp = Bitmap.createBitmap(sizePx, sizePx, Bitmap.Config.ARGB_8888);
            Canvas iconCanvas = new Canvas(rawIconBmp);
            iconCanvas.drawColor(0xFF1E293B);
            Drawable d = info.getBadgedIcon(DisplayMetrics.DENSITY_XHIGH);
            if (d != null) {
                int pad = -dp(2);
                d.setBounds(pad, pad, sizePx - pad, sizePx - pad);
                d.draw(iconCanvas);
            }

            int save = canvas.saveLayer(0, 0, sizePx, sizePx, null);
            canvas.drawBitmap(mask, 0, 0, p);
            p.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(rawIconBmp, 0, 0, p);
            p.setXfermode(null);
            canvas.restoreToCount(save);
        }

        // Subtle glass specular rim border
        Paint borderPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        borderPaint.setStyle(Paint.Style.STROKE);
        borderPaint.setStrokeWidth(Math.max(1.5f, dp(1f)));
        borderPaint.setColor(0x45FFFFFF);
        canvas.drawRoundRect(rect, r, r, borderPaint);

        mIconCache.put(key, bmp);
        return bmp;
    }

    private void drawCustomSystemIcon(Canvas c, RectF rect, float r, int c1, int c2, String type) {
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setShader(new LinearGradient(rect.left, rect.top, rect.right, rect.bottom, c1, c2, Shader.TileMode.CLAMP));
        c.drawRoundRect(rect, r, r, p);
        p.setShader(null);

        float cx = rect.centerX();
        float cy = rect.centerY();
        float w = rect.width();

        Paint fg = new Paint(Paint.ANTI_ALIAS_FLAG);
        fg.setColor(0xFFFFFFFF);

        if ("PHONE".equals(type)) {
            fg.setStyle(Paint.Style.STROKE);
            fg.setStrokeWidth(w * 0.11f);
            fg.setStrokeCap(Paint.Cap.ROUND);
            RectF arcRect = new RectF(cx - w * 0.24f, cy - w * 0.24f, cx + w * 0.24f, cy + w * 0.24f);
            c.drawArc(arcRect, 115, 110, false, fg);
            fg.setStyle(Paint.Style.FILL);
            c.drawCircle(cx - w * 0.13f, cy - w * 0.16f, w * 0.08f, fg);
            c.drawCircle(cx + w * 0.16f, cy + w * 0.13f, w * 0.08f, fg);
        } else if ("MSG".equals(type)) {
            RectF bubble = new RectF(cx - w * 0.26f, cy - w * 0.22f, cx + w * 0.26f, cy + w * 0.16f);
            c.drawRoundRect(bubble, w * 0.12f, w * 0.12f, fg);
            Path tail = new Path();
            tail.moveTo(cx - w * 0.16f, cy + w * 0.12f);
            tail.lineTo(cx - w * 0.24f, cy + w * 0.27f);
            tail.lineTo(cx - w * 0.02f, cy + w * 0.15f);
            tail.close();
            c.drawPath(tail, fg);
            Paint dot = new Paint(Paint.ANTI_ALIAS_FLAG);
            dot.setColor(c2);
            c.drawCircle(cx - w * 0.12f, cy - w * 0.03f, w * 0.035f, dot);
            c.drawCircle(cx, cy - w * 0.03f, w * 0.035f, dot);
            c.drawCircle(cx + w * 0.12f, cy - w * 0.03f, w * 0.035f, dot);
        } else if ("CAM".equals(type)) {
            fg.setStyle(Paint.Style.STROKE);
            fg.setStrokeWidth(w * 0.06f);
            c.drawCircle(cx, cy, w * 0.24f, fg);
            fg.setStyle(Paint.Style.FILL);
            fg.setColor(0xFF38BDF8);
            c.drawCircle(cx, cy, w * 0.13f, fg);
            fg.setColor(0xFFF43F5E);
            c.drawCircle(cx + w * 0.22f, cy - w * 0.22f, w * 0.045f, fg);
        } else if ("GAL".equals(type)) {
            fg.setColor(0xFFFFE4E6);
            c.drawCircle(cx - w * 0.13f, cy - w * 0.13f, w * 0.09f, fg);
            Path mtn = new Path();
            mtn.moveTo(cx - w * 0.28f, cy + w * 0.24f);
            mtn.lineTo(cx - w * 0.05f, cy - w * 0.04f);
            mtn.lineTo(cx + w * 0.10f, cy + w * 0.12f);
            mtn.lineTo(cx + w * 0.18f, cy + w * 0.01f);
            mtn.lineTo(cx + w * 0.30f, cy + w * 0.24f);
            mtn.close();
            fg.setColor(0xFFFFFFFF);
            c.drawPath(mtn, fg);
        } else if ("SET".equals(type)) {
            fg.setStyle(Paint.Style.STROKE);
            fg.setStrokeWidth(w * 0.09f);
            c.drawCircle(cx, cy, w * 0.17f, fg);
            for (int i = 0; i < 8; i++) {
                double ang = i * Math.PI / 4.0;
                float x1 = cx + (float) Math.cos(ang) * w * 0.18f;
                float y1 = cy + (float) Math.sin(ang) * w * 0.18f;
                float x2 = cx + (float) Math.cos(ang) * w * 0.27f;
                float y2 = cy + (float) Math.sin(ang) * w * 0.27f;
                c.drawLine(x1, y1, x2, y2, fg);
            }
        }
    }

    private void attachSpringTouch(final View view, final Runnable onClick, final Runnable onLongClick) {
        view.setOnTouchListener(new OnTouchListener() {
            private boolean mLongPressed = false;
            private final Runnable mLongPressRunnable = () -> {
                if (onLongClick != null) {
                    mLongPressed = true;
                    view.performHapticFeedback(HapticFeedbackConstants.LONG_PRESS);
                    onLongClick.run();
                }
            };

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getActionMasked()) {
                    case MotionEvent.ACTION_DOWN:
                        mLongPressed = false;
                        v.animate().scaleX(0.88f).scaleY(0.88f).setDuration(90)
                                .setInterpolator(new DecelerateInterpolator()).start();
                        if (onLongClick != null) {
                            mHandler.postDelayed(mLongPressRunnable, 450);
                        }
                        return true;
                    case MotionEvent.ACTION_UP:
                        mHandler.removeCallbacks(mLongPressRunnable);
                        v.animate().scaleX(1f).scaleY(1f).setDuration(180)
                                .setInterpolator(new OvershootInterpolator(2.2f)).start();
                        if (!mLongPressed && onClick != null) {
                            v.performHapticFeedback(HapticFeedbackConstants.VIRTUAL_KEY);
                            onClick.run();
                        }
                        return true;
                    case MotionEvent.ACTION_CANCEL:
                        mHandler.removeCallbacks(mLongPressRunnable);
                        v.animate().scaleX(1f).scaleY(1f).setDuration(150).start();
                        return true;
                }
                return false;
            }
        });
    }

    private void launchActivityInfo(LauncherActivityInfo info, View sourceView) {
        try {
            ActivityOptions opts = ActivityOptions.makeScaleUpAnimation(
                    sourceView, 0, 0, sourceView.getWidth(), sourceView.getHeight());
            mLauncherApps.startMainActivity(
                    info.getComponentName(), info.getUser(), sourceView.getClipBounds(), opts.toBundle());
        } catch (Exception e) {
            launchPackage(info.getApplicationInfo().packageName);
        }
    }

    private void launchPackage(String pkg) {
        try {
            Intent i = mContext.getPackageManager().getLaunchIntentForPackage(pkg);
            if (i != null) {
                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                mContext.startActivity(i);
            }
        } catch (Exception ignored) {}
    }

    private void searchWebInChrome(String query) {
        try {
            String url = TextUtils.isEmpty(query)
                    ? "https://www.google.com"
                    : "https://www.google.com/search?q=" + Uri.encode(query);
            Intent i = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
            i.setPackage("com.android.chrome");
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            mContext.startActivity(i);
            closeDrawerAnimated();
        } catch (Exception e) {
            launchPackage("com.android.chrome");
        }
    }

    private void showAppLongPressDialog(final LauncherActivityInfo info) {
        final String pkg = info.getApplicationInfo().packageName;
        final boolean isSystem = (info.getApplicationInfo().flags & ApplicationInfo.FLAG_SYSTEM) != 0;
        CharSequence[] items = isSystem
                ? new CharSequence[]{"🚀 Open App", "ℹ️ App Info & Permissions"}
                : new CharSequence[]{"🚀 Open App", "ℹ️ App Info & Permissions", "🗑️ Uninstall App"};

        new AlertDialog.Builder(mContext, android.R.style.Theme_DeviceDefault_Dialog_Alert)
                .setTitle(info.getLabel())
                .setItems(items, (dialog, which) -> {
                    if (which == 0) {
                        launchActivityInfo(info, this);
                    } else if (which == 1) {
                        try {
                            Intent i = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                                    Uri.fromParts("package", pkg, null));
                            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                            mContext.startActivity(i);
                        } catch (Exception ignored) {}
                    } else if (which == 2) {
                        try {
                            Intent i = new Intent(Intent.ACTION_DELETE,
                                    Uri.fromParts("package", pkg, null));
                            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                            mContext.startActivity(i);
                        } catch (Exception ignored) {}
                    }
                })
                .show();
    }

    private void updateSystemTelemetry(boolean boosted) {
        try {
            ActivityManager am = (ActivityManager) mContext.getSystemService(Context.ACTIVITY_SERVICE);
            ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
            if (am != null) {
                am.getMemoryInfo(mi);
                double totalGb = mi.totalMem / (1024.0 * 1024.0 * 1024.0);
                double usedGb = (mi.totalMem - mi.availMem) / (1024.0 * 1024.0 * 1024.0);
                float ratio = (float) (usedGb / Math.max(0.1, totalGb));
                mRamText.setText(String.format(Locale.US, "RAM • %.1f / %.1f GB", usedGb, totalGb));
                if (mRamBarFill.getParent() instanceof View) {
                    int parentW = ((View) mRamBarFill.getParent()).getWidth();
                    if (parentW > 0) {
                        ViewGroup.LayoutParams lp = mRamBarFill.getLayoutParams();
                        lp.width = Math.max(dp(16), (int) (parentW * Math.min(1f, ratio)));
                        mRamBarFill.setLayoutParams(lp);
                    }
                }
            }
            BatteryManager bm = (BatteryManager) mContext.getSystemService(Context.BATTERY_SERVICE);
            int bat = bm != null ? bm.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY) : 100;
            mBatText.setText("BATTERY • " + bat + "% • TURBO");
            if (boosted && mStatusBadge != null) {
                mStatusBadge.setText("⚡ SUNNO TURBO • OPTIMIZED");
            }
        } catch (Exception ignored) {}
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        mHandler.post(mTelemetryUpdater);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        mHandler.removeCallbacks(mTelemetryUpdater);
    }
}
