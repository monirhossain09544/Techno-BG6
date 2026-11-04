#!/bin/bash
set -e
cd /nvme0n1-disk/shunno_os
cat -n system/core/fs_mgr/libfs_avb/fs_avb.cpp | sed -n '350,450p;530,620p'
