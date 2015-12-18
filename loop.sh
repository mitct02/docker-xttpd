#!/bin/bash

# just a kludge to get xttpd to run in the "foreground"

/usr/sbin/xttpd 8080

while :; do sleep 600; done
