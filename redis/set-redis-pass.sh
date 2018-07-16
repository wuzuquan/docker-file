#!/bin/sh
#set redis.conf  requirepass masterauth
echo $REDISPASSWORD
if [ "$REDISPASSWORD" != "NULL" ]; then
  sed  -i  "s/#masterauth/masterauth  $REDISPASSWORD/g" /redis.conf
  echo $REDISPASSWORD
  sed -i "s/#requirepass/requirepass  $REDISPASSWORD/g" /redis.conf


fi
exec "$@"
