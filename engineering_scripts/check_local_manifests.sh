#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os
ls -la .repo/local_manifests/
grep -rn "zuma" .repo/local_manifests/ || true
ls -la device/google/
