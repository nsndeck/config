#!/bin/bash
ps -eo pid,user,ppid,%mem,%cpu,cmd --sort=-%mem | head | tail -n +2 | awk '{print $1}' > ./long-running-processes-1.txt
echo "--------------------------------------------------"
echo "UName     PID  CMD          Process_Running_Time" | column -t
echo "--------------------------------------------------"
for procid in `cat ./long-running-processes-1.txt`
do
username=$(ps -u -p $procid | tail -1 | awk '{print $1}')
pruntime=$(ps -p $procid -o etime | tail -1)
ocmd=$(ps -p $procid | tail -1 | awk '{print $4}')
echo "$username $procid $ocmd $pruntime"
done | column -t
echo "--------------------------------------------------"
