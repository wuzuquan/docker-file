#!/bin/sh
# 容器实际上是linux下的一个进程，容器共享宿主机的内核配置，例如THP,常见的tcpip配置。只有sysctl -a 能查询到的参数可以自定义
# 修改内核配置需要开启容器特权模式
#set redis.conf  requirepass masterauth
#设置redis密码
echo $REDISPASSWORD
if [ "$REDISPASSWORD" != "default" ]; then
  sed  -i  "s/#masterauth/masterauth  $REDISPASSWORD/g" /redis.conf
  echo $REDISPASSWORD
  sed -i "s/#requirepass/requirepass  $REDISPASSWORD/g" /redis.conf

fi

#设置最大内存
#设置 最大内存
 sed  -i  "s/maxmemory 8gb/maxmemory  $MAXMEM/g" /redis.conf
#disable THP
#sysctl.conf
echo vm.max_map_count=655360 >> /etc/sysctl.conf
echo vm.overcommit_memory=1 >> /etc/sysctl.conf
echo net.core.somaxconn= 16384 >> /etc/sysctl.conf

echo vm.swappiness=0 >> /etc/sysctl.conf
echo vm.min_free_kbytes=5000 >>/etc/sysctl.conf

#sysctl -w net.core.netdev_max_backlog=16384
#sysctl -w net.ipv4.tcp_max_syn_backlog=16384


echo 10000 65535 > /proc/sys/net/ipv4/ip_local_port_range

echo 20000 > /proc/sys/net/core/somaxconn
#sudo sysctl -p;
#sysctl -p

exec "$@"
