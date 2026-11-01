#!/system/bin/sh
F=/data/local/tmp/decacher

case "$1" in
start)
    [ -f "$F" ] || echo 0 > "$F"
    VAL=$(cat "$F")
    VAL=$((VAL + 1))
    echo "$VAL" > "$F"
    FREQ=${2:-3600}
    nohup sh -c "while [ \"\$(cat $F 2>/dev/null)\" = \"$VAL\" ]; do pm trim-caches 4096G; sleep $FREQ; done" >/dev/null 2>&1 &
    ;;
stop)
    [ -f "$F" ] && echo $(( $(cat "$F") + 1 )) > "$F"
    ;;
*)
    echo "usage: $0 {start [freq]|stop}" >&2; exit 1
    ;;
esac