#!/system/bin/sh

pkill -9 -f "pm trim-caches" 2>/dev/null
rm -rf "/data/local/tmp/decacher"