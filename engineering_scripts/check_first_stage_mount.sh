#!/bin/bash
grep -n -C 25 "logical" /nvme0n1-disk/shunno_os/system/core/init/first_stage_mount.cpp | head -n 90
