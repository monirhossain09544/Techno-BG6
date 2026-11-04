ls /system/usr/keylayout /vendor/usr/keylayout /odm/usr/keylayout 2>/dev/null | grep -i -E 'gf|finger|goodix'
for f in /vendor/usr/keylayout/gf-keys.kl /system/usr/keylayout/gf-keys.kl /odm/usr/keylayout/gf-keys.kl; do
  [ -f "$f" ] && echo "== $f" && cat "$f"
done
echo "nav setting: $(settings get secure system_navigation_keys_enabled)"
dumpsys input | grep -A6 'gf-keys' | grep -i -E 'gf-keys|KeyLayoutFile|Classes' | head -6
