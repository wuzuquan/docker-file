#!/bin/sh

sed  -i  "s/-Xms8g -Xmx8g -Xmn4g/$MEMORY/g" bin/runbroker.sh
echo $MEMORY

ipaddr=$(ifconfig eth0|grep 'inet addr:'|awk -F':' '{print $2}'|awk '{print $1}')

echo $ipaddr

echo "brokerIP1=$ipaddr" >> conf/2m-2s-sync/broker-a.properties
echo "brokerIP1=$ipaddr" >> conf/2m-2s-sync/broker-a-s.properties
echo "brokerIP1=$ipaddr" >> conf/2m-2s-sync/broker-b.properties
echo "brokerIP1=$ipaddr" >> conf/2m-2s-sync/broker-b-s.properties

echo "autoCreateTopicEnable=false" >> conf/2m-2s-sync/broker-a.properties
echo "autoCreateTopicEnable=false" >> conf/2m-2s-sync/broker-a-s.properties
echo "autoCreateTopicEnable=false" >> conf/2m-2s-sync/broker-b.properties
echo "autoCreateTopicEnable=false" >> conf/2m-2s-sync/broker-b-s.properties

echo "autoCreateSubscriptionGroup=false" >> conf/2m-2s-sync/broker-a.properties
echo "autoCreateSubscriptionGroup=false" >> conf/2m-2s-sync/broker-a-s.properties
echo "autoCreateSubscriptionGroup=false" >> conf/2m-2s-sync/broker-b.properties
echo "autoCreateSubscriptionGroup=false" >> conf/2m-2s-sync/broker-b-s.properties


echo "storePathRootDir=/rocketmq/store" >> conf/2m-2s-sync/broker-a.properties
echo "storePathRootDir=/rocketmq/store" >> conf/2m-2s-sync/broker-a-s.properties
echo "storePathRootDir=/rocketmq/store" >> conf/2m-2s-sync/broker-b.properties
echo "storePathRootDir=/rocketmq/store" >> conf/2m-2s-sync/broker-b-s.properties


echo "storePathCommitLog=/rocketmq/commitlog" >> conf/2m-2s-sync/broker-a.properties
echo "storePathCommitLog=/rocketmq/commitlog" >> conf/2m-2s-sync/broker-a-s.properties
echo "storePathCommitLog=/rocketmq/commitlog" >> conf/2m-2s-sync/broker-b.properties
echo "storePathCommitLog=/rocketmq/commitlog" >> conf/2m-2s-sync/broker-b-s.properties

echo "sendMessageThreadPoolNums=128" >> conf/2m-2s-sync/broker-a.properties
echo "sendMessageThreadPoolNums=128" >> conf/2m-2s-sync/broker-a-s.properties
echo "sendMessageThreadPoolNums=128" >> conf/2m-2s-sync/broker-b.properties
echo "sendMessageThreadPoolNums=128" >> conf/2m-2s-sync/broker-b-s.properties

echo "pullMessageThreadPoolNums=128" >> conf/2m-2s-sync/broker-a.properties
echo "pullMessageThreadPoolNums=128" >> conf/2m-2s-sync/broker-a-s.properties
echo "pullMessageThreadPoolNums=128" >> conf/2m-2s-sync/broker-b.properties
echo "pullMessageThreadPoolNums=128" >> conf/2m-2s-sync/broker-b-s.properties


echo "useReentrantLockWhenPutMessage=true" >> conf/2m-2s-sync/broker-a.properties
echo "useReentrantLockWhenPutMessage=true" >> conf/2m-2s-sync/broker-a-s.properties
echo "useReentrantLockWhenPutMessage=true" >> conf/2m-2s-sync/broker-b.properties
echo "useReentrantLockWhenPutMessage=true" >> conf/2m-2s-sync/broker-b-s.properties



echo "brokerIP1=$ipaddr" >> conf/2m-2s-async/broker-a.properties
echo "brokerIP1=$ipaddr" >> conf/2m-2s-async/broker-a-s.properties
echo "brokerIP1=$ipaddr" >> conf/2m-2s-async/broker-b.properties
echo "brokerIP1=$ipaddr" >> conf/2m-2s-async/broker-b-s.properties

echo "autoCreateTopicEnable=false" >> conf/2m-2s-async/broker-a.properties
echo "autoCreateTopicEnable=false" >> conf/2m-2s-async/broker-a-s.properties
echo "autoCreateTopicEnable=false" >> conf/2m-2s-async/broker-b.properties
echo "autoCreateTopicEnable=false" >> conf/2m-2s-async/broker-b-s.properties

echo "autoCreateSubscriptionGroup=false" >> conf/2m-2s-async/broker-a.properties
echo "autoCreateSubscriptionGroup=false" >> conf/2m-2s-async/broker-a-s.properties
echo "autoCreateSubscriptionGroup=false" >> conf/2m-2s-async/broker-b.properties
echo "autoCreateSubscriptionGroup=false" >> conf/2m-2s-async/broker-b-s.properties


echo "storePathRootDir=/rocketmq/store" >> conf/2m-2s-async/broker-a.properties
echo "storePathRootDir=/rocketmq/store" >> conf/2m-2s-async/broker-a-s.properties
echo "storePathRootDir=/rocketmq/store" >> conf/2m-2s-async/broker-b.properties
echo "storePathRootDir=/rocketmq/store" >> conf/2m-2s-async/broker-b-s.properties


echo "storePathCommitLog=/rocketmq/commitlog" >> conf/2m-2s-async/broker-a.properties
echo "storePathCommitLog=/rocketmq/commitlog" >> conf/2m-2s-async/broker-a-s.properties
echo "storePathCommitLog=/rocketmq/commitlog" >> conf/2m-2s-async/broker-b.properties
echo "storePathCommitLog=/rocketmq/commitlog" >> conf/2m-2s-async/broker-b-s.properties

echo "sendMessageThreadPoolNums=128" >> conf/2m-2s-async/broker-a.properties
echo "sendMessageThreadPoolNums=128" >> conf/2m-2s-async/broker-a-s.properties
echo "sendMessageThreadPoolNums=128" >> conf/2m-2s-async/broker-b.properties
echo "sendMessageThreadPoolNums=128" >> conf/2m-2s-async/broker-b-s.properties

echo "pullMessageThreadPoolNums=128" >> conf/2m-2s-async/broker-a.properties
echo "pullMessageThreadPoolNums=128" >> conf/2m-2s-async/broker-a-s.properties
echo "pullMessageThreadPoolNums=128" >> conf/2m-2s-async/broker-b.properties
echo "pullMessageThreadPoolNums=128" >> conf/2m-2s-async/broker-b-s.properties

echo "useReentrantLockWhenPutMessage=true" >> conf/2m-2s-async/broker-a.properties
echo "useReentrantLockWhenPutMessage=true" >> conf/2m-2s-async/broker-a-s.properties
echo "useReentrantLockWhenPutMessage=true" >> conf/2m-2s-async/broker-b.properties
echo "useReentrantLockWhenPutMessage=true" >> conf/2m-2s-async/broker-b-s.properties



echo "brokerIP1=$ipaddr" >> conf/2m-noslave/broker-a.properties
echo "brokerIP1=$ipaddr" >> conf/2m-noslave/broker-b.properties

exec "$@"
