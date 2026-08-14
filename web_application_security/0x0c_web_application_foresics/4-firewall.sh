#!/bin/bash
# Scan auth.log and count how many firewall rules were added
# to the system (iptables -A / -I or ufw allow / deny / insert).
# Usage: ./4-firewall.sh [logfile]
# If no logfile is given, ./auth.log is used by default.

if [ -z $1 ]
then
	logfile=auth.log
else
	logfile=$1
fi

grep -iE "iptables.*(-A|-I)|ufw.*(allow|deny|insert|reject)" $logfile | wc -l
