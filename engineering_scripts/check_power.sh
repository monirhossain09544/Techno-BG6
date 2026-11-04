#!/system/bin/sh
dumpsys power | grep -i -E "mWakefulness|Display Power|mStayOn|Wake Locks|SuspendBlock" | head -n 30
