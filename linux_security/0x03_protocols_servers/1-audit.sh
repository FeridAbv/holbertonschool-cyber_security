#!/bin/bash
grep -hEv '^(#|$)' /etc/ssh/sshd_config /etc/ssh/sshd_config.d/*.conf
