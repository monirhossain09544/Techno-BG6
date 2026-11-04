#!/bin/bash
set -e
cd /nvme0n1-disk/shunno_os
cat -n system/core/init/first_stage_mount.cpp | sed -n '755,815p'
