import os
import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"
SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"
ROOT = "/nvme0n1-disk/shunno_os"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)
sftp = ssh.open_sftp()

print("1. Uploading SunnoHomeView.java, sunno_default_wallpaper.png, and stock_apns-conf.xml...")
sftp.put(
    os.path.join(SCRATCH, "SunnoHomeView.java"),
    f"{ROOT}/packages/apps/Launcher3/quickstep/src/com/android/launcher3/uioverrides/SunnoHomeView.java"
)

wp_local = os.path.join(SCRATCH, "sunno_default_wallpaper.png")
for sub in ["drawable-nodpi", "drawable-sw600dp-nodpi", "drawable-sw720dp-nodpi"]:
    sftp.put(wp_local, f"{ROOT}/frameworks/base/core/res/res/{sub}/default_wallpaper.png")

apn_local = os.path.join(SCRATCH, "stock_apns-conf.xml")
sftp.put(apn_local, f"{ROOT}/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml")
sftp.put(apn_local, f"{ROOT}/out/target/product/tdgsi_arm64_ab/system/product/etc/apns-conf.xml")

sftp.close()

patch_script = r'''set -e
cd /nvme0n1-disk/shunno_os

python3 - << 'PY'
import re

# 1. Patch QuickstepLauncher.java to mount SunnoHomeView
ql_path = "packages/apps/Launcher3/quickstep/src/com/android/launcher3/uioverrides/QuickstepLauncher.java"
with open(ql_path, "r") as f:
    ql = f.read()

# Reset to clean git state first if already patched
import subprocess
subprocess.run(["git", "-C", "packages/apps/Launcher3", "checkout", "--", "quickstep/src/com/android/launcher3/uioverrides/QuickstepLauncher.java"], check=True)
with open(ql_path, "r") as f:
    ql = f.read()

field_inject = """    private HomeTransitionController mHomeTransitionController;
    private SunnoHomeView mSunnoHomeView;
"""
assert "private HomeTransitionController mHomeTransitionController;" in ql
ql = ql.replace("    private HomeTransitionController mHomeTransitionController;", field_inject, 1)

setup_inject = """        mHotseatPredictionController = new HotseatPredictionController(this);
        if (mSunnoHomeView == null) {
            mSunnoHomeView = new SunnoHomeView(this);
            com.android.launcher3.views.BaseDragLayer.LayoutParams slp =
                    new com.android.launcher3.views.BaseDragLayer.LayoutParams(
                            android.view.ViewGroup.LayoutParams.MATCH_PARENT,
                            android.view.ViewGroup.LayoutParams.MATCH_PARENT);
            slp.ignoreInsets = true;
            int ovIdx = getDragLayer().indexOfChild(overviewPanel);
            if (ovIdx >= 0) {
                getDragLayer().addView(mSunnoHomeView, ovIdx, slp);
            } else {
                getDragLayer().addView(mSunnoHomeView, slp);
            }
        }
        if (getWorkspace() != null) getWorkspace().setVisibility(View.INVISIBLE);
        if (getHotseat() != null) getHotseat().setVisibility(View.INVISIBLE);
        if (getAppsView() != null) getAppsView().setVisibility(View.INVISIBLE);"""
assert "mHotseatPredictionController = new HotseatPredictionController(this);" in ql
ql = ql.replace("        mHotseatPredictionController = new HotseatPredictionController(this);", setup_inject, 1)

state_inject = """    @Override
    public void onStateSetStart(LauncherState state) {
        super.onStateSetStart(state);
        if (mSunnoHomeView != null) {
            if (state == NORMAL) {
                mSunnoHomeView.setVisibility(View.VISIBLE);
                mSunnoHomeView.animate().alpha(1f).scaleX(1f).scaleY(1f).setDuration(200).start();
            } else {
                mSunnoHomeView.animate().alpha(0f).scaleX(0.92f).scaleY(0.92f).setDuration(150).start();
            }
        }
        if (getWorkspace() != null) getWorkspace().setVisibility(View.INVISIBLE);
        if (getHotseat() != null) getHotseat().setVisibility(View.INVISIBLE);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (mSunnoHomeView != null) {
            mSunnoHomeView.closeDrawerAnimated();
            mSunnoHomeView.setVisibility(View.VISIBLE);
            mSunnoHomeView.setAlpha(1f);
            mSunnoHomeView.setScaleX(1f);
            mSunnoHomeView.setScaleY(1f);
        }
    }

    @Override
    protected void onStateBack() {
        if (mSunnoHomeView != null && mSunnoHomeView.handleBackPress()) {
            return;
        }
        super.onStateBack();
    }

    @Override
    public void onStateSetEnd(LauncherState state) {
        super.onStateSetEnd(state);
        if (mSunnoHomeView != null) {
            if (state == NORMAL) {
                mSunnoHomeView.setVisibility(View.VISIBLE);
                mSunnoHomeView.setAlpha(1f);
            } else {
                mSunnoHomeView.setVisibility(View.INVISIBLE);
            }
        }
        if (getWorkspace() != null) getWorkspace().setVisibility(View.INVISIBLE);
        if (getHotseat() != null) getHotseat().setVisibility(View.INVISIBLE);"""

assert "    @Override\n    public void onStateSetEnd(LauncherState state) {\n        super.onStateSetEnd(state);" in ql
ql = ql.replace("    @Override\n    public void onStateSetEnd(LauncherState state) {\n        super.onStateSetEnd(state);", state_inject, 1)

with open(ql_path, "w") as f:
    f.write(ql)
print("Patched QuickstepLauncher.java successfully!")

# 2. Patch RoSystemProperties.java & CrossWindowBlurListeners.java
ro_path = "frameworks/base/core/java/com/android/internal/os/RoSystemProperties.java"
subprocess.run(["git", "-C", "frameworks/base", "checkout", "--",
                "core/java/com/android/internal/os/RoSystemProperties.java",
                "core/java/android/view/CrossWindowBlurListeners.java",
                "core/res/res/values/config.xml",
                "core/res/res/values/dimens.xml",
                "packages/SystemUI/src/com/android/systemui/statusbar/phone/ScrimController.java",
                "packages/SystemUI/src/com/android/systemui/statusbar/phone/ScrimState.java",
                "packages/SystemUI/res/values/dimens.xml",
                "packages/SystemUI/res/values/config.xml"], check=True)

with open(ro_path, "r") as f:
    ro = f.read()
ro = ro.replace('SystemProperties.getBoolean("ro.config.avoid_gfx_accel", false);', 'false;')
ro = ro.replace('SystemProperties.getBoolean("ro.config.low_ram", false);', 'false;')
with open(ro_path, "w") as f:
    f.write(ro)
print("Patched RoSystemProperties.java (CONFIG_LOW_RAM = false, CONFIG_AVOID_GFX_ACCEL = false)!")

blur_path = "frameworks/base/core/java/android/view/CrossWindowBlurListeners.java"
with open(blur_path, "r") as f:
    bl = f.read()
bl = bl.replace('SystemProperties.getBoolean(BLUR_PROPERTY, false);', 'SystemProperties.getBoolean(BLUR_PROPERTY, true);')
with open(blur_path, "w") as f:
    f.write(bl)
print("Patched CrossWindowBlurListeners.java (CROSS_WINDOW_BLUR_SUPPORTED = true)!")

# 3. Patch frameworks/base/core/res/res/values/config.xml & dimens.xml
cfg_path = "frameworks/base/core/res/res/values/config.xml"
with open(cfg_path, "r") as f:
    cfg = f.read()
cfg = cfg.replace('<string name="config_defaultBrowser" translatable="false">@string/default_browser</string>',
                  '<string name="config_defaultBrowser" translatable="false">com.android.chrome</string>')
cfg = cfg.replace('<integer name="config_navBarInteractionMode">0</integer>',
                  '<integer name="config_navBarInteractionMode">2</integer>')
cfg = cfg.replace('<dimen name="config_buttonCornerRadius">4dp</dimen>',
                  '<dimen name="config_buttonCornerRadius">24dp</dimen>')
cfg = cfg.replace('<integer name="config_defaultRefreshRate">60</integer>',
                  '<integer name="config_defaultRefreshRate">90</integer>')
cfg = cfg.replace('<integer name="config_defaultPeakRefreshRate">0</integer>',
                  '<integer name="config_defaultPeakRefreshRate">90</integer>')
cfg = cfg.replace('<bool name="config_defaultBatteryPercentageSetting">false</bool>',
                  '<bool name="config_defaultBatteryPercentageSetting">true</bool>')
with open(cfg_path, "w") as f:
    f.write(cfg)

dim_path = "frameworks/base/core/res/res/values/dimens.xml"
with open(dim_path, "r") as f:
    dim = f.read()
dim = dim.replace('<dimen name="status_bar_height_portrait">24dp</dimen>',
                  '<dimen name="status_bar_height_portrait">40dp</dimen>')
with open(dim_path, "w") as f:
    f.write(dim)
print("Patched framework-res config.xml & dimens.xml!")

# 4. Patch SystemUI ScrimController.java, ScrimState.java, dimens.xml, config.xml
sc_path = "frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/phone/ScrimController.java"
with open(sc_path, "r") as f:
    sc = f.read()
sc = sc.replace("public static final float BUSY_SCRIM_ALPHA = 1f;",
                "public static final float BUSY_SCRIM_ALPHA = 0.68f;")
with open(sc_path, "w") as f:
    f.write(sc)

ss_path = "frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/phone/ScrimState.java"
with open(ss_path, "r") as f:
    ss = f.read()
ss = ss.replace("mBehindAlpha = mClipQsScrim ? 1 : mDefaultScrimAlpha;",
                "mBehindAlpha = mClipQsScrim ? 0.68f : mDefaultScrimAlpha;")
ss = ss.replace("mBehindAlpha = mClipQsScrim ? 1 : 0;",
                "mBehindAlpha = mClipQsScrim ? 0.68f : 0;")
ss = ss.replace("updateScrimColor(mScrimBehind, 1f /* alpha */, mBackgroundColor);",
                "updateScrimColor(mScrimBehind, 0.68f /* alpha */, mBackgroundColor);")
with open(ss_path, "w") as f:
    f.write(ss)

sdim_path = "frameworks/base/packages/SystemUI/res/values/dimens.xml"
with open(sdim_path, "r") as f:
    sdim = f.read()
sdim = sdim.replace('<dimen name="volume_dialog_background_blur_radius">0dp</dimen>',
                    '<dimen name="volume_dialog_background_blur_radius">40dp</dimen>')
sdim = sdim.replace('<dimen name="max_window_blur_radius">23px</dimen>',
                    '<dimen name="max_window_blur_radius">64px</dimen>')
sdim = sdim.replace('<dimen name="qs_tile_height">80dp</dimen>',
                    '<dimen name="qs_tile_height">74dp</dimen>')
sdim = sdim.replace('<dimen name="qs_tile_text_size">14sp</dimen>',
                    '<dimen name="qs_tile_text_size">13sp</dimen>')
with open(sdim_path, "w") as f:
    f.write(sdim)

scfg_path = "frameworks/base/packages/SystemUI/res/values/config.xml"
with open(scfg_path, "r") as f:
    scfg = f.read()
scfg = scfg.replace('<bool name="config_volumeDialogUseBackgroundBlur">false</bool>',
                    '<bool name="config_volumeDialogUseBackgroundBlur">true</bool>')
scfg = re.sub(
    r'<string name="quick_settings_tiles_default" translatable="false">\s*[^<]+\s*</string>',
    '<string name="quick_settings_tiles_default" translatable="false">internet,bt,flashlight,dnd,hotspot,rotation,battery,location,dark,screenrecord,airplane,alarm</string>',
    scfg
)
with open(scfg_path, "w") as f:
    f.write(scfg)
print("Patched SystemUI for Frosted Glass Blur & Modern QS Tiles!")

# 5. Patch vendor/hardware_overlay/Tecno/BG6/res/values/config.xml
with open("vendor/hardware_overlay/Tecno/BG6/res/values/config.xml", "w") as f:
    f.write("""<?xml version="1.0" encoding="utf-8"?>
<resources>
    <integer name="config_defaultPeakRefreshRate">90</integer>
    <integer name="config_defaultRefreshRate">90</integer>
    <bool name="config_setColorTransformAccelerated">false</bool>
    <integer name="config_navBarInteractionMode">2</integer>
    <bool name="config_defaultBatteryPercentageSetting">true</bool>
</resources>
""")
print("Patched Tecno BG6 hardware overlay for 90Hz + Gesture Nav + Battery %!")
PY
'''

stdin, stdout, stderr = ssh.exec_command(patch_script)
print(stdout.read().decode())
err = stderr.read().decode()
if err:
    print("STDERR:", err)
ssh.close()
