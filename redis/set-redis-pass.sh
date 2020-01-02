#!/bin/sh
#set redis.conf  requirepass masterauth
echo $REDISPASSWORD
if [ "$REDISPASSWORD" != "default" ]; then
  sed  -i  "s/#masterauth/masterauth  $REDISPASSWORD/g" /redis.conf
  echo $REDISPASSWORD
  sed -i "s/#requirepass/requirepass  $REDISPASSWORD/g" /redis.conf

fi

#设置 最大内存
 sed  -i  "s/maxmemory 8gb/maxmemory  $MAXMEM/g" /redis.conf



#sysctl.conf
echo vm.max_map_count=655360 >> /etc/sysctl.conf
echo vm.overcommit_memory=1 >> /etc/sysctl.conf
echo net.core.somaxconn= 16384 >> /etc/sysctl.conf

echo vm.swappiness=0 >> /etc/sysctl.conf
echo vm.min_free_kbytes=5000 >>/etc/sysctl.conf

#sysctl -w net.core.netdev_max_backlog=16384
#sysctl -w net.ipv4.tcp_max_syn_backlog=16384


echo 10000 65535 > /proc/sys/net/ipv4/ip_local_port_range


sudo sysctl -p;
sysctl -p

exec "$@"
