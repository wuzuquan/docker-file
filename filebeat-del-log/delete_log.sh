#!/bin/bash
while true;do

echo `date "+%Y-%m-%d %H:%M:%S"`" start delete log."
#find /var/applog -mtime +$LOG_RETAIN_DAYS -type f -name "*.log" | xargs rm -f
find /var/applog -mtime +$LOG_RETAIN_DAYS -type f -regex .*\.log | xargs rm -f


# clear  nginx log
dir=/var/applog/nginx/
i=0
for file in $dir/*; do
    let i+=1;
    echo $file
    #echo $i
    #cp $file /var/log/nginx/log-$(date -d "yesterday" +"%Y-%m-%d")-$i.log
    # clear .log
    cat /dev/null > $file
done


sleep 72000
done
