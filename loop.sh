#!/bin/bash

# just a kludge to get xttpd to run in the "foreground"

port=$1

if [[ -n "$port" ]]; then
    echo "using port $1"
    /usr/sbin/xttpd $1
else
    echo "using default port"
    /usr/sbin/xttpd 8080
fi

while :; do sleep 600; done
