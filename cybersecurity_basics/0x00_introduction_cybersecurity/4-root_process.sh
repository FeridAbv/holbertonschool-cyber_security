#!/bin/bash
ps -u "$1" -o user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,command | grep -v "[[:space:]]0[[:space:]]*0[[:space:]]"
