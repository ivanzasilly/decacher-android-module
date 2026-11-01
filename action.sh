chmod +x $MODDIR/main.sh
$MODDIR/main.sh stop
$MODDIR/main.sh start $(tr -d '\r\n' < "$MODDIR/frequency.cfg")
