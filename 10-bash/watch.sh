#!/usr/bin/bash

LOGFILE=./apache_logs

# Блокировка скрипта
LOCKFILE=/tmp/myscript.lock

if [ -e ${LOCKFILE} ] && kill -0 $(cat ${LOCKFILE}); then
	echo "Script is already running"
	exit
fi

trap "rm -f ${LOCKFILE}; exit" INT TERM EXIT
echo $$ >${LOCKFILE}

# Файл, в котором будет храниться смещение после последнего запуска
last_run_file="last_run.txt"

if [ ! -f "$last_run_file" ]; then
	touch "$last_run_file"
	echo "1" >>"$last_run_file"
fi

line_count=$(wc -l <"$LOGFILE")
start_line=$(cat "$last_run_file")

lines=$(sed -n "${start_line},\$ p" $LOGFILE)

first_date=$(sed -n "${start_line}p" $LOGFILE | awk '{print $4$5}')
last_date=$(sed -n "\$p" $LOGFILE | awk '{print $4$5}')

echo -e "Dates: " "\n" $first_date "\n" $last_date "\n"
echo -e "Most frequent IPs:"
echo "$lines" | awk '{print $1}' | sort | uniq -c | sort -nr | head

echo -e "\n"
echo -e "Most frequent URLs:"
echo "$lines" | awk '{print $7}' | sort | uniq -c | sort -nr | head

echo -e "\n"
echo -e "Response Codes:"
echo "$lines" | awk '{print $6}' | sort | uniq -c | sort -nr | head

echo $line_count >"$last_run_file"

rm -f ${LOCKFILE}
