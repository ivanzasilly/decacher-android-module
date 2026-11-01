#!/system/bin/sh
D=/data/local/tmp/decacher_running

case "$1" in
start)
    touch "$D"
    nohup sh -c "while [ -f $D ]; do pm trim-caches 4096G; sleep ${2:-3600}; done" >/dev/null 2>&1 &
    ;;
stop)
    rm -f "$D"
    ;;
*)
    echo "usage: $0 {start [freq]|stop}" >&2; exit 1
    ;;
esac