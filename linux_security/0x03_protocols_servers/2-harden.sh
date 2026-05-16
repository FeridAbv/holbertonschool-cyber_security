#!/bin/bash
find / -type d -perm -002 2>/dev/null -exec sh -c 'chmod o-w "$1" && echo "$1"' _ {} \;
