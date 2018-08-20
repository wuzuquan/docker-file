#!/bin/sh
#set redis.conf  requirepass masterauth
echo $REDISPASSWORD
if [ "$REDISPASSWORD" != "NULL" ]; then
  sed  -i  "s/#masterauth/masterauth  $REDISPASSWORD/g" /redis.conf
  echo $REDISPASSWORD
  sed -i "s/#requirepass/requirepass  $REDISPASSWORD/g" /redis.conf


fi
#disable THP
echo never > /sys/kernel/mm/transparent_hugepage/enabled

#sysctl.conf
echo vm.max_map_count=65538 >> /etc/sysctl.conf
echo vm.overcommit_memory=1 >> /etc/sysctl.conf
echo net.core.somaxconn= 16384 >> /etc/sysctl.conf


#sysctl -w net.core.netdev_max_backlog=16384
#sysctl -w net.ipv4.tcp_max_syn_backlog=16384
sysctl -p

exec "$@"
