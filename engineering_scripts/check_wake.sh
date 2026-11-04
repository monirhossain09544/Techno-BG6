#!/system/bin/sh
dmesg | grep " 715\." | grep -vE "trusty|WCN|sc2355"
