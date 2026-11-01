#!/system/bin/sh
MODDIR=${0%/*}
sh "$MODDIR/main.sh" stop
rm -f /data/local/tmp/decacher
