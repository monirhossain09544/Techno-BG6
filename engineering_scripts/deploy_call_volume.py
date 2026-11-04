import hashlib, shlex, sys
from notification_baseline import ROOT, adb, shell

MODE = sys.argv[1] if len(sys.argv) > 1 else 'check'
LIVE = '/data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.vdex'
MODULE = '/data/adb/modules/bg6_hios_pro/transettings_oat/ts.vdex'
BEFORE = ROOT / 'settings.live.before.vdex'
AFTER = ROOT / 'settings.call-volume.vdex'

def sha(path): return hashlib.sha256(path.read_bytes()).hexdigest()
def remote_sha(path): return shell('sha256sum ' + shlex.quote(path), root=True).split()[0]

if MODE == 'check':
    print('BEFORE', sha(BEFORE), 'AFTER', sha(AFTER))
    print('LIVE', remote_sha(LIVE), 'MODULE', remote_sha(MODULE))
    raise SystemExit(0)
assert MODE in ('apply', 'rollback')
source, expected = (AFTER, sha(BEFORE)) if MODE == 'apply' else (BEFORE, sha(AFTER))
for destination in (LIVE, MODULE):
    actual = remote_sha(destination)
    assert actual == expected, (destination, actual, expected)
assert source.stat().st_size == BEFORE.stat().st_size
# Only these two exact files are replaced; no recursion, system remount or app-data operation.
stage = '/data/local/tmp/bg6-call-volume-stage.vdex'
print(adb('push', str(source), stage).decode('utf-8', 'replace'))
assert remote_sha(stage) == sha(source)
print(shell('am force-stop com.android.settings', root=True))
script = 'set -e\n'
for destination in (MODULE, LIVE):
    candidate = destination + '.notification-new'
    qd, qc = shlex.quote(destination), shlex.quote(candidate)
    script += f'cp {shlex.quote(stage)} {qc}\nchown 1000:50226 {qc}\nchmod 0644 {qc}\n'
    if destination == LIVE:
        script += f'chcon u:object_r:dalvikcache_data_file:s0 {qc}\nchattr -i {qd}\n'
    else:
        script += f'chown 0:0 {qc}\n'
    script += f'mv -f {qc} {qd}\n'
    if destination == LIVE: script += f'chattr +i {qd}\n'
script += 'rm -f ' + shlex.quote(stage) + '\n'
try:
    print(shell(script, root=True))
finally:
    for destination in (MODULE, LIVE):
        print('RESULT', destination, remote_sha(destination))
for destination in (LIVE, MODULE): assert remote_sha(destination) == sha(source)
print(shell('am start -W -a android.settings.SOUND_SETTINGS', root=True))
print(shell('df -k /data', root=True))
print('DEPLOYMENT', MODE, 'complete; UI/runtime validation still required.')
