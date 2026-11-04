#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os
OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"

echo "=== 1. Check where HTMLViewer and system apps are in OUT ==="
find "$OUT/system" -name "*HTMLViewer*" -o -name "*su*" 2>/dev/null | grep -E "HTMLViewer|/su$" || true

echo "=== 2. Create Native Android 14 SunnoRiderTile in packages/apps/SunnoRiderTile ==="
mkdir -p packages/apps/SunnoRiderTile/src/com/sunno/ridertile
mkdir -p packages/apps/SunnoRiderTile/res/drawable

cat << 'EOF' > packages/apps/SunnoRiderTile/Android.bp
android_app {
    name: "SunnoRiderTile",
    srcs: ["src/**/*.java"],
    resource_dirs: ["res"],
    platform_apis: true,
    certificate: "platform",
    privileged: true,
    dex_preopt: {
        enabled: true,
    },
}
EOF

cat << 'EOF' > packages/apps/SunnoRiderTile/AndroidManifest.xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.sunno.ridertile"
    android:sharedUserId="android.uid.system">

    <uses-permission android:name="android.permission.WRITE_SETTINGS" />
    <uses-permission android:name="android.permission.WRITE_SECURE_SETTINGS" />
    <uses-permission android:name="android.permission.MODIFY_DAY_NIGHT_MODE" />
    <uses-permission android:name="android.permission.DEVICE_POWER" />

    <application
        android:label="Rider Mode"
        android:directBootAware="true"
        android:persistent="false">

        <service
            android:name=".RiderTileService"
            android:label="Rider Mode"
            android:icon="@drawable/ic_rider_tile"
            android:permission="android.permission.BIND_QUICK_SETTINGS_TILE"
            android:exported="true">
            <intent-filter>
                <action android:name="android.service.quicksettings.action.QS_TILE" />
            </intent-filter>
        </service>
    </application>
</manifest>
EOF

cat << 'EOF' > packages/apps/SunnoRiderTile/res/drawable/ic_rider_tile.xml
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="24dp"
    android:height="24dp"
    android:viewportWidth="24"
    android:viewportHeight="24">
    <path
        android:fillColor="#FFFFFFFF"
        android:pathData="M11,21h-1l1,-7H7.5c-0.58,0 -0.57,-0.32 -0.38,-0.66l0.1,-0.16L13,3h1l-1,7h3.5c0.49,0 0.56,0.33 0.47,0.51l-0.07,0.15L11,21z"/>
</vector>
EOF

cat << 'EOF' > packages/apps/SunnoRiderTile/src/com/sunno/ridertile/RiderTileService.java
package com.sunno.ridertile;

import android.app.UiModeManager;
import android.content.ContentResolver;
import android.os.PowerManager;
import android.provider.Settings;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

public class RiderTileService extends TileService {

    private boolean isRiderModeActive() {
        ContentResolver cr = getContentResolver();
        int lowPower = Settings.Global.getInt(cr, "low_power", 0);
        int nightMode = Settings.Secure.getInt(cr, "ui_night_mode", 1);
        return (lowPower == 1 && nightMode == 2);
    }

    private void updateTileState(boolean active) {
        Tile tile = getQsTile();
        if (tile == null) return;
        tile.setState(active ? Tile.STATE_ACTIVE : Tile.STATE_INACTIVE);
        tile.setLabel("Rider Mode");
        tile.setSubtitle(active ? "ON (Dark + Saver)" : "OFF (Normal)");
        tile.updateTile();
    }

    @Override
    public void onStartListening() {
        super.onStartListening();
        updateTileState(isRiderModeActive());
    }

    @Override
    public void onClick() {
        super.onClick();
        boolean nextState = !isRiderModeActive();
        updateTileState(nextState);

        ContentResolver cr = getContentResolver();
        UiModeManager uiManager = getSystemService(UiModeManager.class);
        PowerManager powerManager = getSystemService(PowerManager.class);

        try {
            // 1. Toggle Battery Saver natively
            Settings.Global.putInt(cr, "low_power", nextState ? 1 : 0);
            if (powerManager != null) {
                powerManager.setPowerSaveModeEnabled(nextState);
            }

            // 2. Toggle Dark Mode natively across all apps & Settings
            Settings.Secure.putInt(cr, "ui_night_mode", nextState ? 2 : 1);
            if (uiManager != null) {
                uiManager.setNightModeActivated(nextState);
            }

            // 3. Optimize Refresh Rate & Animations for Rider outdoor battery life vs smoothness
            Settings.System.putFloat(cr, "min_refresh_rate", nextState ? 60.0f : 60.0f);
            Settings.System.putFloat(cr, "peak_refresh_rate", nextState ? 60.0f : 90.0f);
            Settings.Global.putFloat(cr, Settings.Global.WINDOW_ANIMATION_SCALE, nextState ? 0.5f : 1.0f);
            Settings.Global.putFloat(cr, Settings.Global.TRANSITION_ANIMATION_SCALE, nextState ? 0.5f : 1.0f);
            Settings.Global.putFloat(cr, Settings.Global.ANIMATOR_DURATION_SCALE, nextState ? 0.5f : 1.0f);

            // 4. Disable adaptive brightness hunting
            Settings.System.putInt(cr, Settings.System.SCREEN_BRIGHTNESS_MODE,
                    Settings.System.SCREEN_BRIGHTNESS_MODE_MANUAL);
        } catch (Exception e) {
            // Ignore any individual setting exception
        }
        updateTileState(nextState);
    }
}
EOF

chown -R administrator:administrator packages/apps/SunnoRiderTile

echo "=== 3. Update treble_arm64_bgN.mk and base.mk with Sunno model & SunnoRiderTile & HTMLViewer ==="
cat << 'EOF' > device/phh/treble/treble_arm64_bgN.mk
TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)
$(call inherit-product, device/phh/treble/gapps.mk)

PRODUCT_NAME := treble_arm64_bgN
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := Sunno
PRODUCT_SYSTEM_BRAND := Sunno
PRODUCT_MODEL := Sunno
PRODUCT_SYSTEM_MODEL := Sunno
PRODUCT_SYSTEM_NAME := Sunno
PRODUCT_MANUFACTURER := Sunno
PRODUCT_SYSTEM_MANUFACTURER := Sunno

PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES += \
    HTMLViewer \
    SunnoRiderTile

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.display.id=Sunno-OS-1.0-Android14 \
    ro.sunno.version=Sunno-1.0-Android14
EOF
chown administrator:administrator device/phh/treble/treble_arm64_bgN.mk
