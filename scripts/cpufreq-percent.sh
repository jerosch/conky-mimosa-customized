#!/bin/bash
cpufreq=`~/.config/conky/Mimosa/scripts/cpufreq.sh`
# Replace with your maximum CPU frequency
max_cpufreq=5100
echo "$((100 * ${cpufreq} / ${max_cpufreq}))"