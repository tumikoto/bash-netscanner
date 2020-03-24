#!/usr/bin/env bash

if [ "$1" == "" ]
then
    echo "Usage:"
    echo "./netscanner.sh <network address>"
    echo " "
    echo "Example:"
    echo "./netscanner.sh 192.168.0"
else
    for x in `seq 1 254`; do
        ping $1.$x -c 1 | grep "64 bytes" | cut -d " " -f 4 | cut -d ":" -f 1
    done
fi
