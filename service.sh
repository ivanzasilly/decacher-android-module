#!/system/bin/sh
D=/data/local/tmp/decacher
C=$D/counter
mkdir -p "$D"
[ -f "$D/frequency" ] || echo 3600 > "$D/frequency"
[ -f "$C" ] || echo 0 > "$C"

VAL=$(cat "$C")
VAL=$((VAL + 1))
echo "$VAL" > "$C"

chcon -R u:r:shell:s0 "$D" 2>/dev/null
chown -R shell:shell "$D" 2>/dev/null
chmod -R 777 "$D" 2>/dev/null

FREQ=$(cat "$D/frequency" 2>/dev/null || echo 3600)
nohup sh -c "while [ \"\$(cat $C 2>/dev/null)\" = \"$VAL\" ]; do pm trim-caches 4096G; sleep $FREQ; done" >/dev/null 2>&1 &