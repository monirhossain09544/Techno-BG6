import os
import subprocess
import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"
SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"

# 1. Update SunnoHomeView.java locally so mAllAppsBtn updates its count in reloadApps() and has high-contrast white/cyan styling
with open(os.path.join(SCRATCH, "SunnoHomeView.java"), "r", encoding="utf-8") as f:
    shv = f.read()

shv = shv.replace(
    "    private TextView mStatusBadge;\n",
    "    private TextView mStatusBadge;\n    private TextView mAllAppsBtn;\n"
)
shv = shv.replace(
    '        TextView allAppsBtn = new TextView(mContext);\n'
    '        allAppsBtn.setText("All Apps (" + mAllApps.size() + ") ›");\n'
    '        allAppsBtn.setTextColor(0xFF38BDF8);',
    '        mAllAppsBtn = new TextView(mContext);\n'
    '        mAllAppsBtn.setText("All Apps ›");\n'
    '        mAllAppsBtn.setTextColor(0xFFF8FAFC);'
)
shv = shv.replace(
    '        allAppsBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);\n'
    '        allAppsBtn.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));\n'
    '        allAppsBtn.setPadding(dp(10), dp(4), dp(10), dp(4));\n'
    '        allAppsBtn.setBackground(makeGlassCard(0x2238BDF8, 0x4038BDF8, 1f, 14f));\n'
    '        attachSpringTouch(allAppsBtn, () -> openDrawerAnimated(false), null);\n'
    '        secHeader.addView(allAppsBtn);',
    '        mAllAppsBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);\n'
    '        mAllAppsBtn.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));\n'
    '        mAllAppsBtn.setPadding(dp(12), dp(5), dp(12), dp(5));\n'
    '        mAllAppsBtn.setBackground(makeGlassCard(0xB00F172A, 0x6638BDF8, 1f, 14f));\n'
    '        attachSpringTouch(mAllAppsBtn, () -> openDrawerAnimated(false), null);\n'
    '        secHeader.addView(mAllAppsBtn);'
)
shv = shv.replace(
    '        secTitle.setTextColor(0xFF94A3B8);',
    '        secTitle.setTextColor(0xFFE2E8F0);'
)
shv = shv.replace(
    '        populateHomeAndDock();\n        populateDrawerGrid();',
    '        if (mAllAppsBtn != null) mAllAppsBtn.setText("All Apps (" + mAllApps.size() + ") ›");\n        populateHomeAndDock();\n        populateDrawerGrid();'
)
shv = shv.replace("● SUNNO OS 2.0 • 90Hz", "● SUNNO OS 2.0 • TURBO UI")
shv = shv.replace("BATTERY • --% • 90 FPS", "BATTERY • --% • TURBO")
shv = shv.replace('% • 90 FPS"', '% • TURBO"')
shv = shv.replace("⚡ SUNNO TURBO • 90Hz LOCKED", "⚡ SUNNO TURBO • OPTIMIZED")

with open(os.path.join(SCRATCH, "SunnoHomeView.java"), "w", encoding="utf-8") as f:
    f.write(shv)

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)
sftp = ssh.open_sftp()
sftp.put(
    os.path.join(SCRATCH, "SunnoHomeView.java"),
    "/nvme0n1-disk/shunno_os/packages/apps/Launcher3/quickstep/src/com/android/launcher3/uioverrides/SunnoHomeView.java"
)
sftp.close()

cmd = r'''set -e
cd /nvme0n1-disk/shunno_os

python3 - << 'PY'
import subprocess
subprocess.run(["git", "-C", "packages/apps/Launcher3", "checkout", "--", "quickstep/src/com/android/launcher3/uioverrides/QuickstepLauncher.java"], check=True)

ql_path = "packages/apps/Launcher3/quickstep/src/com/android/launcher3/uioverrides/QuickstepLauncher.java"
with open(ql_path, "r") as f:
    ql = f.read()

ql = ql.replace(
    "    private HomeTransitionController mHomeTransitionController;",
    "    private HomeTransitionController mHomeTransitionController;\n    private SunnoHomeView mSunnoHomeView;",
    1
)

setup_inject = """        mHotseatPredictionController = new HotseatPredictionController(this);
        if (mSunnoHomeView == null) {
            mSunnoHomeView = new SunnoHomeView(this);
            com.android.launcher3.views.BaseDragLayer.LayoutParams slp =
                    new com.android.launcher3.views.BaseDragLayer.LayoutParams(
                            android.view.ViewGroup.LayoutParams.MATCH_PARENT,
                            android.view.ViewGroup.LayoutParams.MATCH_PARENT);
            slp.ignoreInsets = true;
            getDragLayer().addView(mSunnoHomeView, slp);
            mSunnoHomeView.bringToFront();
        }
        if (getWorkspace() != null) {
            getWorkspace().setVisibility(View.GONE);
            getWorkspace().setTranslationX(10000f);
        }
        if (getHotseat() != null) {
            getHotseat().setVisibility(View.GONE);
            getHotseat().setTranslationX(10000f);
        }"""
ql = ql.replace("        mHotseatPredictionController = new HotseatPredictionController(this);", setup_inject, 1)

state_inject = """    @Override
    public void onStateSetStart(LauncherState state) {
        super.onStateSetStart(state);
        if (getWorkspace() != null) getWorkspace().setTranslationX(10000f);
        if (getHotseat() != null) getHotseat().setTranslationX(10000f);
        if (mSunnoHomeView != null) {
            if (state == ALL_APPS) {
                mSunnoHomeView.bringToFront();
                mSunnoHomeView.openDrawerAnimated(false);
                getStateManager().goToState(NORMAL, false);
                return;
            } else if (state == NORMAL) {
                mSunnoHomeView.bringToFront();
                mSunnoHomeView.setVisibility(View.VISIBLE);
                mSunnoHomeView.animate().alpha(1f).scaleX(1f).scaleY(1f).setDuration(180).start();
            } else {
                mSunnoHomeView.animate().alpha(0f).scaleX(0.92f).scaleY(0.92f).setDuration(140).start();
            }
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
        if (getWorkspace() != null) getWorkspace().setTranslationX(10000f);
        if (getHotseat() != null) getHotseat().setTranslationX(10000f);
        if (mSunnoHomeView != null) {
            if (state == NORMAL || state == ALL_APPS) {
                mSunnoHomeView.bringToFront();
                mSunnoHomeView.setVisibility(View.VISIBLE);
                mSunnoHomeView.setAlpha(1f);
            } else {
                mSunnoHomeView.setVisibility(View.INVISIBLE);
            }
        }"""
ql = ql.replace("    @Override\n    public void onStateSetEnd(LauncherState state) {\n        super.onStateSetEnd(state);", state_inject, 1)

orig_new_intent = """    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);"""
replacement_new_intent = """    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (mSunnoHomeView != null) {
            mSunnoHomeView.bringToFront();
            mSunnoHomeView.closeDrawerAnimated();
            mSunnoHomeView.setVisibility(View.VISIBLE);
            mSunnoHomeView.setAlpha(1f);
            mSunnoHomeView.setScaleX(1f);
            mSunnoHomeView.setScaleY(1f);
        }"""
ql = ql.replace(orig_new_intent, replacement_new_intent, 1)

with open(ql_path, "w") as f:
    f.write(ql)
print("Updated QuickstepLauncher.java z-order & swipe-up drawer hook!")
PY

source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
m -j72 Launcher3QuickStep
ls -lh out/target/product/tdgsi_arm64_ab/system/system_ext/priv-app/Launcher3QuickStep/Launcher3QuickStep.apk
'''

stdin, stdout, stderr = ssh.exec_command(cmd)
while True:
    line = stdout.readline()
    if not line:
        break
    print(line, end="", flush=True)
err = stderr.read().decode()
if err:
    print("STDERR:", err)

sftp = ssh.open_sftp()
local_apk = os.path.join(SCRATCH, "Launcher3QuickStep.apk")
sftp.get(
    "/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/system_ext/priv-app/Launcher3QuickStep/Launcher3QuickStep.apk",
    local_apk
)
sftp.close()
ssh.close()
print("Downloaded updated Launcher3QuickStep.apk:", os.path.getsize(local_apk))
