#!/bin/bash
echo `grep "^[c]pu MHz" /proc/cpuinfo | cut -d: -f2 | cut -d. -f1 | sed 's/ *//g' | sort -n | tail -1`