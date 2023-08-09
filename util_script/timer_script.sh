#!/bin/bash
cpu_id="$1"
while true;
do ./get_util.sh $cpu_id;
#date +%s%N | cut -b1-13;
sleep 0.1;
done;
