#!/system/bin/sh
sh "$MODDIR/main.sh" stop
sh "$MODDIR/main.sh" start "$(tr -d '\r\n' < "$MODDIR/frequency.cfg")"
