#!/bin/bash
while true;do

echo `date "+%Y-%m-%d %H:%M:%S"`" start delete log."
#find /var/applog -mtime +$LOG_RETAIN_DAYS -type f -name "*.log" | xargs rm -f
find /var/applog -mtime +$LOG_RETAIN_DAYS -type f -regex .*\.log | xargs rm -f
sleep 72000
done
