#!/bin/bash
killall -q python3 git || true
sleep 2
find /nvme0n1-disk/rom/aosp/.repo -name '*.lock' -delete 2>/dev/null || true
su - administrator -c '
    cd /nvme0n1-disk/rom/aosp
    nohup /usr/local/bin/repo sync -c -j16 --force-sync --no-clone-bundle --no-tags > /nvme0n1-disk/rom/repo_sync.log 2>&1 </dev/null &
'
sleep 4
du -sh /nvme0n1-disk/rom/aosp/.repo
ps aux | grep 'repo/main.py' | grep -v grep | head -n 5
tail -n 10 /nvme0n1-disk/rom/repo_sync.log
