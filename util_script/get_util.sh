#!/bin/bash
SCRIPT_MEM="./get_mem_util.sh"
# The first argument is the cpu ID we want to explore
cpu_id="$1"
#SCRIPT_CPU="./get_cpu_idle.sh"
SCRIPT_CPU="./get_cpu_util.sh"
mem_out=$("$SCRIPT_MEM")
cpu_out=$("$SCRIPT_CPU" $cpu_id)
echo "$mem_out,$cpu_out"
#echo "$cpu_out"
