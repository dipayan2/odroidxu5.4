#!/bin/bash
cpuId="$1"
#echo "$cpuId"
secVar='/Cpu'$cpuId'/ {print $8,$9}'
#echo "$secVar"
cpufreq=$(cat /sys/devices/system/cpu/cpu$cpuId/cpufreq/scaling_cur_freq)
cpuIdle=$(top -bn1 -1 | awk "$secVar" | awk -F"[ ,]+" '{print $2}')
echo "$cpuIdle,$cpufreq"
