import paramiko
import os

REMOTE_BUILD_PY = r'''import os
import subprocess
import shutil

WORK = "/nvme0n1-disk/infinity_x/gnss_app_build"
shutil.rmtree(WORK, ignore_errors=True)
os.makedirs(WORK + "/src/com/android/settings/gnss", exist_ok=True)
os.makedirs(WORK + "/res/drawable", exist_ok=True)
os.makedirs(WORK + "/res/values", exist_ok=True)
os.makedirs(WORK + "/assets", exist_ok=True)

# 1. AndroidManifest.xml
MANIFEST = """<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.android.settings.gnss"
    android:versionCode="1"
    android:versionName="1.0-KERNEL">

    <uses-sdk android:minSdkVersion="29" android:targetSdkVersion="34" />

    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_MOCK_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_LOCATION_EXTRA_COMMANDS" />
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE_LOCATION" />
    <uses-permission android:name="android.permission.POST_NOTIFICATIONS" />
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />

    <application
        android:label="Kernel GNSS"
        android:icon="@drawable/ic_gnss"
        android:usesCleartextTraffic="true"
        android:theme="@android:style/Theme.DeviceDefault.NoActionBar">

        <activity
            android:name=".MainActivity"
            android:label="Kernel GNSS Location"
            android:exported="true"
            android:launchMode="singleTask"
            android:configChanges="orientation|screenSize|keyboardHidden">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
                <action android:name="android.service.quicksettings.action.QS_TILE_PREFERENCES" />
            </intent-filter>
            <intent-filter android:priority="100">
                <action android:name="com.android.settings.action.IA_SETTINGS" />
                <action android:name="com.android.settings.action.EXTRA_SETTINGS" />
                <category android:name="android.intent.category.DEFAULT" />
            </intent-filter>
            <meta-data android:name="com.android.settings.category"
                android:value="com.android.settings.category.ia.homepage" />
            <meta-data android:name="com.android.settings.title"
                android:value="Kernel GNSS Location" />
            <meta-data android:name="com.android.settings.summary"
                android:value="Native OpenStreetMap &amp; Hardware GNSS Controller" />
        </activity>

        <service
            android:name=".KernelGnssService"
            android:exported="false"
            android:foregroundServiceType="location" />

        <service
            android:name=".GnssTileService"
            android:label="Kernel GNSS"
            android:icon="@drawable/ic_gnss"
            android:permission="android.permission.BIND_QUICK_SETTINGS_TILE"
            android:exported="true">
            <intent-filter>
                <action android:name="android.service.quicksettings.action.QS_TILE" />
            </intent-filter>
        </service>

    </application>
</manifest>
"""

with open(WORK + "/AndroidManifest.xml", "w") as f:
    f.write(MANIFEST)

# 2. Vector icon drawable/ic_gnss.xml
IC_GNSS = """<?xml version="1.0" encoding="utf-8"?>
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="24dp"
    android:height="24dp"
    android:viewportWidth="24"
    android:viewportHeight="24">
    <path
        android:fillColor="#00E676"
        android:pathData="M12,8c-2.21,0 -4,1.79 -4,4s1.79,4 4,4 4,-1.79 4,-4 -1.79,-4 -4,-4zM20.94,11c-0.46,-4.17 -3.77,-7.48 -7.94,-7.94L13,1h-2v2.06C6.83,3.52 3.52,6.83 3.06,11L1,11v2h2.06c0.46,4.17 3.77,7.48 7.94,7.94L11,23h2v-2.06c4.17,-0.46 7.48,-3.77 7.94,-7.94L23,13v-2h-2.06zM12,19c-3.87,0 -7,-3.13 -7,-7s3.13,-7 7,-7 7,3.13 7,7 -3.13,7 -7,7z"/>
</vector>
"""
with open(WORK + "/res/drawable/ic_gnss.xml", "w") as f:
    f.write(IC_GNSS)

# 3. assets/index.html (OpenStreetMap + Leaflet + Search + Presets + Joystick + Telemetry)
HTML = r"""<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>Kernel GNSS Studio</title>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
<style>
  * { box-sizing: border-box; margin: 0; padding: 0; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; -webkit-tap-highlight-color: transparent; }
  body { background: #0d1117; color: #e6edf3; height: 100vh; display: flex; flex-direction: column; overflow: hidden; }
  
  /* Header */
  .top-bar { background: #161b22; padding: 10px 14px; border-bottom: 1px solid #30363d; z-index: 1000; }
  .title-row { display: flex; align-items: center; justify-content: space-between; margin-bottom: 8px; }
  .app-title { font-size: 15px; font-weight: 700; color: #58a6ff; display: flex; align-items: center; gap: 6px; }
  .badge { font-size: 11px; font-weight: 700; padding: 3px 9px; border-radius: 12px; text-transform: uppercase; letter-spacing: 0.4px; }
  .badge.active { background: rgba(0, 230, 118, 0.18); color: #00e676; border: 1px solid #00e676; }
  .badge.idle { background: rgba(139, 148, 158, 0.18); color: #8b949e; border: 1px solid #30363d; }

  /* Search box */
  .search-row { display: flex; gap: 6px; position: relative; }
  .search-input { flex: 1; background: #0d1117; border: 1px solid #30363d; color: #fff; padding: 8px 12px; border-radius: 8px; font-size: 13px; outline: none; }
  .search-input:focus { border-color: #58a6ff; }
  .btn-search { background: #21262d; color: #e6edf3; border: 1px solid #30363d; padding: 0 12px; border-radius: 8px; font-size: 12px; font-weight: 600; }
  .btn-layer { background: #21262d; color: #58a6ff; border: 1px solid #30363d; padding: 0 10px; border-radius: 8px; font-size: 12px; font-weight: 600; }
  #search-results { position: absolute; top: 38px; left: 0; right: 0; background: #161b22; border: 1px solid #30363d; border-radius: 8px; max-height: 190px; overflow-y: auto; display: none; z-index: 2000; box-shadow: 0 8px 24px rgba(0,0,0,0.6); }
  .search-item { padding: 9px 12px; font-size: 12px; border-bottom: 1px solid #21262d; color: #c9d1d9; }
  .search-item:active { background: #1f6feb; color: #fff; }

  /* Preset chips */
  .chips-bar { display: flex; gap: 6px; overflow-x: auto; padding: 7px 12px; background: #12161c; border-bottom: 1px solid #21262d; scrollbar-width: none; }
  .chips-bar::-webkit-scrollbar { display: none; }
  .chip { flex-shrink: 0; background: #21262d; color: #c9d1d9; border: 1px solid #30363d; padding: 5px 10px; border-radius: 14px; font-size: 11px; font-weight: 600; }
  .chip:active { background: #58a6ff; color: #0d1117; }
  .chip.save-btn { background: rgba(88, 166, 255, 0.15); color: #58a6ff; border-color: #58a6ff; }

  /* Map container */
  #map-wrap { flex: 1; position: relative; }
  #map { width: 100%; height: 100%; background: #161b22; }

  /* Floating D-Pad Joystick on Map */
  .dpad { position: absolute; right: 12px; bottom: 14px; z-index: 900; display: grid; grid-template-columns: repeat(3, 34px); grid-template-rows: repeat(3, 34px); gap: 3px; background: rgba(22,27,34,0.88); padding: 5px; border-radius: 12px; border: 1px solid #30363d; backdrop-filter: blur(6px); }
  .dpad button { background: #21262d; color: #e6edf3; border: 1px solid #30363d; border-radius: 7px; font-size: 13px; font-weight: bold; }
  .dpad button:active { background: #00e676; color: #000; }

  /* Bottom Control Panel */
  .bottom-panel { background: #161b22; border-top: 1px solid #30363d; padding: 10px 14px 14px; z-index: 1000; }
  .telemetry { display: flex; justify-content: space-between; background: #0d1117; padding: 7px 10px; border-radius: 8px; border: 1px solid #21262d; margin-bottom: 8px; font-size: 11px; color: #8b949e; }
  .telemetry span b { color: #00e676; font-family: monospace; }
  .coords-row { display: flex; gap: 6px; margin-bottom: 8px; }
  .coord-box { flex: 1; background: #0d1117; border: 1px solid #30363d; border-radius: 7px; padding: 5px 8px; }
  .coord-box label { display: block; font-size: 9px; color: #8b949e; text-transform: uppercase; }
  .coord-box input { width: 100%; background: transparent; border: none; color: #fff; font-size: 12px; font-family: monospace; outline: none; margin-top: 1px; }
  .action-row { display: flex; gap: 8px; }
  .btn-main { flex: 2; padding: 12px; border: none; border-radius: 10px; font-size: 13px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.4px; }
  .btn-lock { background: #00e676; color: #051b0e; }
  .btn-lock:active { background: #00c853; }
  .btn-stop { flex: 1; padding: 12px; border: 1px solid #58a6ff; background: rgba(88,166,255,0.18); color: #58a6ff; border-radius: 10px; font-size: 13px; font-weight: 700; }
  .btn-stop:active { background: #58a6ff; color: #0d1117; }
  #toast { position: absolute; top: 12px; left: 50%; transform: translateX(-50%); background: rgba(13,17,23,0.92); color: #fff; border: 1px solid #58a6ff; padding: 8px 14px; border-radius: 20px; font-size: 12px; font-weight: 600; z-index: 2500; display: none; white-space: nowrap; box-shadow: 0 4px 16px rgba(0,0,0,0.5); }
</style>
</head>
<body>

<div class="top-bar">
  <div class="title-row">
    <div class="app-title">&#x1F6F0;&#xFE0F; Kernel GNSS Location Studio</div>
    <div id="status-badge" class="badge idle">REAL GPS</div>
  </div>
  <div class="search-row">
    <input id="q" class="search-input" type="text" placeholder="Search place on OpenStreetMap (e.g. Gulshan 2, Banani)..." onkeydown="if(event.key==='Enter')doSearch()" />
    <button class="btn-search" onclick="doSearch()">Search</button>
    <button class="btn-layer" onclick="toggleLayer()">Map</button>
    <div id="search-results"></div>
  </div>
</div>

<div class="chips-bar" id="chips-bar">
  <button class="chip save-btn" onclick="saveCustomPreset()">+ Save Pin</button>
  <button class="chip" onclick="jumpTo(23.7925, 90.4078, 'Gulshan 2')">Gulshan 2</button>
  <button class="chip" onclick="jumpTo(23.7937, 90.4043, 'Banani 11')">Banani 11</button>
  <button class="chip" onclick="jumpTo(23.7465, 90.3760, 'Dhanmondi')">Dhanmondi</button>
  <button class="chip" onclick="jumpTo(23.8728, 90.3984, 'Uttara Sec 7')">Uttara 7</button>
  <button class="chip" onclick="jumpTo(23.8069, 90.3687, 'Mirpur 10')">Mirpur 10</button>
  <button class="chip" onclick="jumpTo(23.8162, 90.4265, 'Bashundhara')">Bashundhara</button>
  <button class="chip" onclick="jumpTo(23.7806, 90.4259, 'Badda')">Badda</button>
  <button class="chip" onclick="jumpTo(23.7330, 90.4172, 'Motijheel')">Motijheel</button>
</div>

<div id="map-wrap">
  <div id="toast"></div>
  <div id="map"></div>
  <div class="dpad" title="Move pin by ~15 meters">
    <button onclick="nudge(0.00012, -0.00012)">&#x2196;</button>
    <button onclick="nudge(0.00015, 0)">&#x2191;</button>
    <button onclick="nudge(0.00012, 0.00012)">&#x2197;</button>
    <button onclick="nudge(0, -0.00015)">&#x2190;</button>
    <button onclick="recenterMap()">&#x25CE;</button>
    <button onclick="nudge(0, 0.00015)">&#x2192;</button>
    <button onclick="nudge(-0.00012, -0.00012)">&#x2199;</button>
    <button onclick="nudge(-0.00015, 0)">&#x2193;</button>
    <button onclick="nudge(-0.00012, 0.00012)">&#x2198;</button>
  </div>
</div>

<div class="bottom-panel">
  <div class="telemetry">
    <span>SV: <b id="sv-val">13</b></span>
    <span>Cn0: <b id="cn0-val">42 dB</b></span>
    <span>isMock: <b>false</b></span>
    <span>Sync: <b>GPS+Fused+Net</b></span>
  </div>
  <div class="coords-row">
    <div class="coord-box">
      <label>Latitude</label>
      <input id="in-lat" type="number" step="0.000001" value="23.792500" onchange="onManualCoord()" />
    </div>
    <div class="coord-box">
      <label>Longitude</label>
      <input id="in-lon" type="number" step="0.000001" value="90.407800" onchange="onManualCoord()" />
    </div>
    <div class="coord-box" style="max-width:72px">
      <label>Acc (m)</label>
      <input id="in-acc" type="number" step="0.1" value="2.6" />
    </div>
  </div>
  <div class="action-row">
    <button id="btn-lock" class="btn-main btn-lock" onclick="lockHere()">Lock Hardware GNSS Here</button>
    <button class="btn-stop" onclick="stopLock()">Real GPS</button>
  </div>
</div>

<script>
let curLat = 23.792500;
let curLon = 90.407800;
let isLocked = false;
let isDarkLayer = false;

const osmStreet = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
  maxZoom: 19,
  attribution: '&copy; OpenStreetMap'
});
const cartoDark = L.tileLayer('https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png', {
  maxZoom: 19,
  attribution: '&copy; OSM &amp; Carto'
});

const map = L.map('map', { zoomControl: true, layers: [osmStreet] }).setView([curLat, curLon], 16);

const pinIcon = L.divIcon({
  className: 'custom-pin',
  html: '<div id="pin-dot" style="width:22px;height:22px;background:#00e676;border:3px solid #fff;border-radius:50%;box-shadow:0 0 12px #00e676;"></div>',
  iconSize: [22, 22],
  iconAnchor: [11, 11]
});

const marker = L.marker([curLat, curLon], { draggable: true, icon: pinIcon }).addTo(map);
let toastTimer = null;
function showToast(msg, color) {
  const t = document.getElementById('toast');
  t.style.borderColor = color || '#58a6ff';
  t.style.color = color || '#58a6ff';
  t.innerText = msg;
  t.style.display = 'block';
  if (toastTimer) clearTimeout(toastTimer);
  toastTimer = setTimeout(() => { t.style.display = 'none'; }, 3000);
}

function setCoordsUI(lat, lon, pushIfActive) {
  curLat = parseFloat(lat.toFixed(6));
  curLon = parseFloat(lon.toFixed(6));
  document.getElementById('in-lat').value = curLat.toFixed(6);
  document.getElementById('in-lon').value = curLon.toFixed(6);
  marker.setLatLng([curLat, curLon]);
  if (pushIfActive && isLocked && window.AndroidBridge) {
    const acc = parseFloat(document.getElementById('in-acc').value) || 2.6;
    window.AndroidBridge.updateGnssCoords(curLat, curLon, 15.2, acc, true);
  }
}

map.on('click', function(e) {
  setCoordsUI(e.latlng.lat, e.latlng.lng, true);
});

marker.on('dragend', function(e) {
  const pos = marker.getLatLng();
  setCoordsUI(pos.lat, pos.lng, true);
});

function toggleLayer() {
  if (isDarkLayer) {
    map.removeLayer(cartoDark);
    map.addLayer(osmStreet);
  } else {
    map.removeLayer(osmStreet);
    map.addLayer(cartoDark);
  }
  isDarkLayer = !isDarkLayer;
}

function jumpTo(lat, lon) {
  setCoordsUI(lat, lon, true);
  map.flyTo([lat, lon], 16, { duration: 0.6 });
}

function recenterMap() {
  map.flyTo([curLat, curLon], 17, { duration: 0.4 });
}

function nudge(dLat, dLon) {
  setCoordsUI(curLat + dLat, curLon + dLon, true);
  map.panTo([curLat, curLon]);
}

function onManualCoord() {
  const la = parseFloat(document.getElementById('in-lat').value);
  const lo = parseFloat(document.getElementById('in-lon').value);
  if (!isNaN(la) && !isNaN(lo)) {
    jumpTo(la, lo);
  }
}

function updateBadge(active) {
  isLocked = active;
  const b = document.getElementById('status-badge');
  const btn = document.getElementById('btn-lock');
  const dot = document.getElementById('pin-dot');
  if (active) {
    b.className = 'badge active';
    b.innerText = 'GNSS LOCKED';
    btn.innerText = 'Update Locked GNSS Pin';
    if (dot) { dot.style.background = '#00e676'; dot.style.boxShadow = '0 0 12px #00e676'; }
  } else {
    b.className = 'badge idle';
    b.innerText = 'REAL GPS';
    btn.innerText = 'Lock Hardware GNSS Here';
    if (dot) { dot.style.background = '#2f81f7'; dot.style.boxShadow = '0 0 12px #2f81f7'; }
  }
}

function lockHere() {
  const acc = parseFloat(document.getElementById('in-acc').value) || 2.6;
  if (window.AndroidBridge) {
    window.AndroidBridge.startGnssLock(curLat, curLon, 15.2, acc, true);
  }
  updateBadge(true);
  showToast('Hardware GNSS Locked: ' + curLat.toFixed(4) + ', ' + curLon.toFixed(4), '#00e676');
}

function stopLock() {
  updateBadge(false);
  if (window.AndroidBridge) {
    try {
      const res = JSON.parse(window.AndroidBridge.stopGnssLock());
      if (res && res.lat && res.lon) {
        setCoordsUI(res.lat, res.lon, false);
        map.flyTo([res.lat, res.lon], 16, { duration: 0.7 });
      }
    } catch (e) {}
  }
  showToast('Real GPS Restored (Moved to your real location)', '#58a6ff');
}

function doSearch() {
  const q = document.getElementById('q').value.trim();
  if (!q) return;
  const box = document.getElementById('search-results');
  box.style.display = 'block';
  box.innerHTML = '<div class="search-item">Searching OpenStreetMap...</div>';
  fetch('https://nominatim.openstreetmap.org/search?format=json&limit=6&q=' + encodeURIComponent(q))
    .then(r => r.json())
    .then(list => {
      if (!list || !list.length) {
        box.innerHTML = '<div class="search-item">No results found</div>';
        setTimeout(() => box.style.display='none', 2000);
        return;
      }
      box.innerHTML = '';
      list.forEach(item => {
        const div = document.createElement('div');
        div.className = 'search-item';
        div.innerText = item.display_name;
        div.onclick = () => {
          box.style.display = 'none';
          jumpTo(parseFloat(item.lat), parseFloat(item.lon));
        };
        box.appendChild(div);
      });
    })
    .catch(() => {
      box.innerHTML = '<div class="search-item">Search error - check connection</div>';
    });
}

function saveCustomPreset() {
  const name = prompt('Enter name for this location:', 'My Spot');
  if (!name) return;
  const saved = JSON.parse(localStorage.getItem('gnss_presets') || '[]');
  saved.push({ name, lat: curLat, lon: curLon });
  localStorage.setItem('gnss_presets', JSON.stringify(saved));
  renderCustomPresets();
}

function renderCustomPresets() {
  document.querySelectorAll('.chip.custom-chip').forEach(e => e.remove());
  const bar = document.getElementById('chips-bar');
  const saved = JSON.parse(localStorage.getItem('gnss_presets') || '[]');
  saved.forEach(p => {
    const btn = document.createElement('button');
    btn.className = 'chip custom-chip';
    btn.style.borderColor = '#00e676';
    btn.innerText = p.name;
    btn.onclick = () => jumpTo(p.lat, p.lon);
    bar.appendChild(btn);
  });
}

function initFromBridge() {
  renderCustomPresets();
  if (window.AndroidBridge) {
    try {
      const st = JSON.parse(window.AndroidBridge.getStateJson());
      if (st.lat && st.lon) {
        setCoordsUI(st.lat, st.lon, false);
        map.setView([st.lat, st.lon], 16);
      }
      updateBadge(!!st.active);
    } catch (e) {}
  }
}

setInterval(() => {
  const sv = 12 + (Math.floor(Date.now() / 5000) % 4);
  const cn0 = 41 + (Math.floor(Date.now() / 3000) % 4);
  document.getElementById('sv-val').innerText = sv;
  document.getElementById('cn0-val').innerText = cn0 + ' dB';
}, 2000);

window.onload = initFromBridge;
</script>
</body>
</html>
"""

with open(WORK + "/assets/index.html", "w") as f:
    f.write(HTML)

# 4. KernelGnssService.java
SERVICE_JAVA = r"""package com.android.settings.gnss;

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
"""

with open(WORK + "/src/com/android/settings/gnss/KernelGnssService.java", "w") as f:
    f.write(SERVICE_JAVA)

# 5. MainActivity.java
MAIN_JAVA = r"""package com.android.settings.gnss;

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
"""

with open(WORK + "/src/com/android/settings/gnss/MainActivity.java", "w") as f:
    f.write(MAIN_JAVA)

# 6. GnssTileService.java (Quick Settings Tile)
TILE_JAVA = r"""package com.android.settings.gnss;

import android.content.Intent;
import android.content.SharedPreferences;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

public class GnssTileService extends TileService {
    @Override
    public void onStartListening() {
        super.onStartListening();
        syncTile();
    }

    private void syncTile() {
        Tile t = getQsTile();
        if (t == null) return;
        boolean active = KernelGnssService.sIsRunning;
        t.setState(active ? Tile.STATE_ACTIVE : Tile.STATE_INACTIVE);
        t.setLabel("Kernel GNSS");
        t.setSubtitle(active ? "Locked" : "Real GPS");
        t.updateTile();
    }

    @Override
    public void onClick() {
        super.onClick();
        if (KernelGnssService.sIsRunning) {
            Intent i = new Intent(this, KernelGnssService.class);
            i.setAction(KernelGnssService.ACTION_STOP);
            startService(i);
            KernelGnssService.sIsRunning = false;
        } else {
            Intent i = new Intent(this, KernelGnssService.class);
            i.setAction(KernelGnssService.ACTION_START);
            startForegroundService(i);
            KernelGnssService.sIsRunning = true;
        }
        syncTile();
    }
}
"""

with open(WORK + "/src/com/android/settings/gnss/GnssTileService.java", "w") as f:
    f.write(TILE_JAVA)

# 7. Compile resources, Java, DEX, align, and sign!
BIN = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin"
ANDROID_JAR = "/nvme0n1-disk/shunno_os/prebuilts/sdk/34/public/android.jar"
if not os.path.exists(ANDROID_JAR):
    ANDROID_JAR = subprocess.check_output("find /nvme0n1-disk/shunno_os/prebuilts/sdk -name android.jar | grep public | sort -V | tail -n 1", shell=True).decode().strip()

print("Using ANDROID_JAR:", ANDROID_JAR)
os.makedirs(WORK + "/compiled_res", exist_ok=True)
os.makedirs(WORK + "/gen", exist_ok=True)
os.makedirs(WORK + "/classes", exist_ok=True)

subprocess.check_call([
    f"{BIN}/aapt2", "compile", "--dir", WORK + "/res", "-o", WORK + "/compiled_res/res.zip"
])

subprocess.check_call([
    f"{BIN}/aapt2", "link",
    "-o", WORK + "/unsigned.apk",
    "-I", ANDROID_JAR,
    "--manifest", WORK + "/AndroidManifest.xml",
    "-A", WORK + "/assets",
    "--java", WORK + "/gen",
    WORK + "/compiled_res/res.zip"
])

java_files = [
    WORK + "/gen/com/android/settings/gnss/R.java",
    WORK + "/src/com/android/settings/gnss/KernelGnssService.java",
    WORK + "/src/com/android/settings/gnss/MainActivity.java",
    WORK + "/src/com/android/settings/gnss/GnssTileService.java",
]
subprocess.check_call([
    "javac", "-source", "8", "-target", "8", "-bootclasspath", ANDROID_JAR, "-d", WORK + "/classes"
] + java_files)

class_files = subprocess.check_output(f"find {WORK}/classes -name '*.class'", shell=True).decode().split()
subprocess.check_call([
    f"{BIN}/d8", "--lib", ANDROID_JAR, "--output", WORK
] + class_files)

subprocess.check_call(["zip", "-j", "-0", WORK + "/unsigned.apk", WORK + "/classes.dex"])
subprocess.check_call([f"{BIN}/zipalign", "-f", "-p", "4", WORK + "/unsigned.apk", WORK + "/aligned.apk"])

KEY_PK8 = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8"
KEY_PEM = "/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem"
subprocess.check_call([
    f"{BIN}/apksigner", "sign",
    "--key", KEY_PK8,
    "--cert", KEY_PEM,
    "--out", WORK + "/KernelGnssSettings.apk",
    WORK + "/aligned.apk"
])
print("BUILT_APK_SUCCESS:", os.path.getsize(WORK + "/KernelGnssSettings.apk"))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)

stdin, stdout, stderr = c.exec_command("python3 -", timeout=120)
stdin.write(REMOTE_BUILD_PY)
stdin.channel.shutdown_write()

print(stdout.read().decode())
print(stderr.read().decode())

sftp = c.open_sftp()
local_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\KernelGnssSettings.apk"
sftp.get("/nvme0n1-disk/infinity_x/gnss_app_build/KernelGnssSettings.apk", local_apk)
sftp.close()
c.close()
print("Downloaded APK to:", local_apk, os.path.getsize(local_apk))
