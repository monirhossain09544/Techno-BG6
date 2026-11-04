#!/bin/bash
set -e
cd /nvme0n1-disk/shunno_os
grep -n -C 30 "IsStandaloneImageRollback" system/core/init/first_stage_mount.cpp
