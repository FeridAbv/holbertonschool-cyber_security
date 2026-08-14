#!/bin/bash
# Scan auth.log and count how many distinct IP addresses
# successfully gained access to the system. Each unique IP is
# considered a different attacker.
# Usage: ./3-ips.sh [logfile]
# If no logfile is given, ./auth.log is used by default.

if [ -z $1 ]
then
	logfile=auth.log
else
	logfile=$1
fi

grep "Accepted password" $logfile | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' | sort -u | wc -l
