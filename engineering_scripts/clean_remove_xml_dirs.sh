#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os
rm -rf device/google/akita device/google/akita-kernel device/google/akita-sepolicy

# Also check if any remove.xml projects still exist on disk
python3 - << 'PYEOF'
import xml.etree.ElementTree as ET
import os, shutil

rem_tree = ET.parse('/nvme0n1-disk/shunno_os/.repo/local_manifests/remove.xml')
removed_names = set()
for elem in rem_tree.getroot().findall('remove-project'):
    name = elem.attrib.get('name')
    if name:
        removed_names.add(name)

def_tree = ET.parse('/nvme0n1-disk/shunno_os/.repo/manifests/default.xml')
for elem in def_tree.getroot().findall('project'):
    name = elem.attrib.get('name')
    path = elem.attrib.get('path', name)
    if name in removed_names:
        full_path = os.path.join('/nvme0n1-disk/shunno_os', path)
        if os.path.exists(full_path):
            print(f"Removing leftover directory from remove.xml: {path}")
            shutil.rmtree(full_path, ignore_errors=True)
PYEOF

# Launch the build and monitor for 60 seconds
sudo -u administrator bash -c '
nohup /nvme0n1-disk/shunno_os/run_build.sh > /nvme0n1-disk/shunno_os/build_sunno.log 2>&1 < /dev/null &
BPID=$!
echo "NEW_BUILD_PID=$BPID"
for i in {1..12}; do
    sleep 5
    if ! ps -p $BPID > /dev/null 2>&1; then
        echo "=== BUILD EXITED ==="
        tail -n 35 /nvme0n1-disk/shunno_os/build_sunno.log
        exit 0
    fi
    echo "=== [Tick $i] ==="
    tail -n 4 /nvme0n1-disk/shunno_os/build_sunno.log | tr "\r" "\n" | tail -n 4
done
'
