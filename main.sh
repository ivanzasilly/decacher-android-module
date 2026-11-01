#!/system/bin/sh
case "$1" in
start)
    pgrep -f 'while :; do pm trim-caches' >/dev/null && exit 0
    nohup sh -c "while :; do pm trim-caches 4096G; sleep ${2:-3600}; done" >/dev/null 2>&1 &
    ;;
stop)
    pkill -f 'pm trim-caches 4096G'
    ;;
*)
    echo "usage: $0 {start [freq]|stop}" >&2; exit 1
    ;;
esac
