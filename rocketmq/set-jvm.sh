#!/bin/sh

sed  -i  "s/-Xms8g -Xmx8g -Xmn4g/$MEMORY/g" bin/runbroker.sh
sed  -i  "s/jre\/lib\/ext/lib\/ext/g" bin/runbroker.sh

echo $MEMORY

#ipaddr=$(ifconfig eth0|grep 'inet addr:'|awk -F':' '{print $2}'|awk '{print $1}')

#podip从环境变量取
echo  "#podip" >> conf/2m-2s-sync/broker-a.properties
echo  "#podip" >> conf/2m-2s-sync/broker-a-s.properties
echo  "#podip" >> conf/2m-2s-sync/broker-b.properties
echo  "#podip" >> conf/2m-2s-sync/broker-b-s.properties

echo  "namesrvAddr=$NAMESRV" >> conf/2m-2s-sync/broker-a.properties
echo  "namesrvAddr=$NAMESRV" >> conf/2m-2s-sync/broker-a-s.properties
echo  "namesrvAddr=$NAMESRV" >> conf/2m-2s-sync/broker-b.properties
echo  "namesrvAddr=$NAMESRV" >> conf/2m-2s-sync/broker-b-s.properties

echo  "brokerIP2=$POD_IP" >> conf/2m-2s-sync/broker-a.properties
echo  "brokerIP2=$POD_IP" >> conf/2m-2s-sync/broker-b.properties

echo  "brokerIP1=$POD_IP" >> conf/2m-2s-sync/broker-a.properties
echo  "brokerIP1=$POD_IP" >> conf/2m-2s-sync/broker-a-s.properties
echo  "brokerIP1=$POD_IP" >> conf/2m-2s-sync/broker-b.properties
echo  "brokerIP1=$POD_IP" >> conf/2m-2s-sync/broker-b-s.properties



#sysctl.conf
echo vm.max_map_count=655360 >> /etc/sysctl.conf
echo vm.overcommit_memory=1 >> /etc/sysctl.conf
echo net.core.somaxconn= 16384 >> /etc/sysctl.conf

echo vm.swappiness=0 >> /etc/sysctl.conf
echo vm.min_free_kbytes=5000 >>/etc/sysctl.conf

#mkdir /rocketmq/store/consumequeue
rm -f /rocketmq/rocketmq-home/conf/plain_acl.yml
mkdir -p /rocketmq/rocketmq-home/conf/acl/
ln -s /rocketmq/rocketmq-home/conf/acl/plain_acl.yml /rocketmq/rocketmq-home/conf/plain_acl.yml

eval "$@"
