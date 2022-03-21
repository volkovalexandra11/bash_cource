#! /bin/bash

case "$1" in 
start)
    sleep 10d &
    echo $!>var/run/mysleep.pid
    ;;
stop)
    kill cat var/run/mysleep.pid
    rm var/run/mysleep.pid
    ;;