#!/bin/sh
twoval=$(dmesg | grep DEVFREQ| tail -1 |awk -F',' '{print $2,$4}')
memfreq=$(cat /sys/class/devfreq/10c20000.memory-controller/cur_freq)
#cpuval=$(dmesg | grep CPU| tail -1 |awk -F',' '{print $2,$4}')
echo "$twoval,$memfreq"

