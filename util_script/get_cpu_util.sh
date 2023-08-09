#!/bin/sh
cpuId="$1"
twoval=$(dmesg | grep CPU| tail -1 |awk -F',' '{print $2,$4}')
#cpuval=$(dmesg | grep CPU| tail -1 |awk -F',' '{print $2,$4}')
cpufreq=$(cat /sys/devices/system/cpu/cpu$cpuId/cpufreq/scaling_cur_freq)
echo "$twoval,$cpufreq"

