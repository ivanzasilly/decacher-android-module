#!/system/bin/sh
MODDIR=${0%/*}
sh "$MODDIR/main.sh" stop
sh "$MODDIR/main.sh" start "$(tr -d '\r\n' < "$MODDIR/frequency.cfg")"
echo daemon restarted
