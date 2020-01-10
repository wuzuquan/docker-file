#!/bin/sh


#sysctl.conf
echo vm.max_map_count=655360 >> /etc/sysctl.conf
echo vm.overcommit_memory=1 >> /etc/sysctl.conf
echo net.core.somaxconn= 16384 >> /etc/sysctl.conf

echo vm.swappiness=0 >> /etc/sysctl.conf
echo vm.min_free_kbytes=5000 >>/etc/sysctl.conf


#rm -f /etc/nginx/nginx.conf
#mkdir -p /etc/nginx/extension/
#ln -s /etc/nginx/extension/nginx.conf /etc/nginx/nginx.conf

eval "$@"
