chmod +x $MODPATH/main.sh
$MODPATH/main.sh start "$(tr -d '\r\n' < $MODPATH/frequency.cfg)"