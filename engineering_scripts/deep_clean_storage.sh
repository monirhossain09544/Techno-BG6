#!/system/bin/sh
echo "=== 1. BEFORE DEEP CLEAN ==="
df -h /data

echo "=== 2. CLEAN ORPHANED /data/dalvik-cache/arm64/data@app@* ==="
for f in /data/dalvik-cache/arm64/data@app@*; do
  [ -e "$f" ] || continue
  base=$(basename "$f")
  # Convert data@app@~~xxx==@pkg-yyy==@base.apk@classes.vdex -> /data/app/~~xxx==/pkg-yyy==
  sub=$(echo "$base" | sed 's/^data@app@//; s/@[^@]*@classes\..*$//; s/@/\//g')
  if [ ! -d "/data/app/$sub" ]; then
    echo "Removing orphaned dalvik-cache: $base"
    rm -f "$f"
  fi
done

echo "=== 3. CLEAN BLOATWARE DALVIK-CACHE ==="
rm -f /data/dalvik-cache/arm64/*PalmPay* \
      /data/dalvik-cache/arm64/*Phoenix* \
      /data/dalvik-cache/arm64/*UnifiedMidTest* \
      /data/dalvik-cache/arm64/*AgingFunction* \
      /data/dalvik-cache/arm64/*LetsSwitch* \
      /data/dalvik-cache/arm64/*AppCenter* \
      /data/dalvik-cache/arm64/*FaceID* \
      /data/dalvik-cache/arm64/*PalmId* \
      /data/dalvik-cache/arm64/*SmartPanel*

echo "=== 4. RECOMPILE REMAINING BLOATED OAT APPS WITH -m verify ==="
for pkg in com.google.android.apps.maps com.whatsapp com.imo.android.imoim com.useavior.app com.google.android.calendar org.thunderdog.challegram com.transsion.scanningrecharger com.minute.back to.plasma.one.application com.arena.banglalinkmela.app com.rork.cue org.adaway; do
  cmd package compile -m verify -f "$pkg" >/dev/null 2>&1
done

echo "=== 5. CLEAN NON-LOGIN HIDDEN CACHES IN /data/data ==="
# GMS Search Index & Wallet Promo Cache (844 MB)
rm -rf /data/data/com.google.android.gms/files/AppDataSearch/main/cur/* \
       /data/data/com.google.android.gms/files/wallet/shared/datadownload/* \
       /data/data/com.google.android.gms/app_semanticlocation_placeindex_cache/* \
       /data/data/com.google.android.gms/app_frewle_tile_cache_manager_db/* \
       /data/data/com.google.android.gms/files/clearcut/* \
       /data/data/com.google.android.gms/no_backup/.webview*

# Google Photos ML model download cache (458 MB)
rm -rf /data/data/com.google.android.apps.photos/files/datadownload/*

# Spotify orphaned .webview_main_* caches (213 MB)
rm -rf /data/data/com.spotify.music/no_backup/.webview_main_*

# Facebook & Messenger non-login caches (406 MB)
rm -rf /data/data/com.facebook.katana/files/newsfeed/* \
       /data/data/com.facebook.katana/app_graph_service_cache/* \
       /data/data/com.facebook.katana/app_overtheair/updates/* \
       /data/data/com.facebook.katana/files/videolite-bk/* \
       /data/data/com.facebook.katana/app_models_data/* \
       /data/data/com.facebook.orca/files/ExoPlayerCacheDir/* \
       /data/data/com.facebook.orca/app_ras_blobs/* \
       /data/data/com.facebook.orca/files/bankAndEcho/* \
       /data/data/com.facebook.orca/app_msqrd_effect_asset_disk_cache_fixed/* \
       /data/data/com.facebook.orca/app_image_scoped/* \
       /data/data/com.facebook.orca/app_graph_service_cache/*

# Gboard, Google App, Gmail, WhatsApp, FIFA Ad caches (~200 MB)
rm -rf /data/data/com.google.android.inputmethod.latin/files/share_content/* \
       /data/data/com.google.android.inputmethod.latin/files/datadownload/* \
       /data/data/com.google.android.googlequicksearchbox/files/lens_ondevice_text_stack_multiscript_omni/* \
       /data/data/com.google.android.googlequicksearchbox/files/datadownload/* \
       /data/data/com.google.android.googlequicksearchbox/no_backup/.webview* \
       /data/data/com.google.android.gm/files/downloads/* \
       /data/data/com.google.android.gm/no_backup/.webview* \
       /data/data/com.whatsapp/files/Logs/* \
       /data/data/com.ea.gp.fifamobile/files/Tapjoy/* \
       /data/data/com.ea.gp.fifamobile/files/ShaderCache/* \
       /data/data/com.ea.gp.fifamobile/no_backup/.webview* \
       /data/data/com.ea.gp.fifamobile/no_backup/vungle_cache/* \
       /data/data/com.ea.gp.fifamobile/no_backup/UnityAdsWebViewCache/* \
       /data/media/0/Pictures/.thumbnails/*

echo "=== 6. TRIM FILESYSTEMS ==="
/data/adb/ksu/bin/busybox fstrim -v /data/adb/modules 2>/dev/null
/data/adb/ksu/bin/busybox fstrim -v /data 2>/dev/null
sm fstrim 2>/dev/null

echo "=== 7. AFTER DEEP CLEAN ==="
df -h /data
du -d 1 -m /data 2>/dev/null | sort -nr | head -n 15
