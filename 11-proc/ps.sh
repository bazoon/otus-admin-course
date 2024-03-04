#!/bin/bash

a=$(ls /proc | grep -E '^[0-9]+$')

printf "%-16s %-16s %-16s %-16s %-16s \n" "Pid" "Tty" "Stat" "Time" "Command"

for pid in $a; do
	stdin=/proc/$pid/fd/0
	stat_file=/proc/$pid/stat

	if [ -e $stdin ]; then
		tty=$(tty <$stdin)
		cmd=$(cat $stat_file | awk '{print $2}')
		stat=$(cat $stat_file | awk '{print $3}')
		time=$(cat $stat_file | awk '{print $14/100}')
		time=$(printf "%.2f" $time)

		printf "%-16s %-16s %-16s %-16s %-16s \n" "$pid" "$tty" "$stat" "$time" "$cmd"
	fi
done
