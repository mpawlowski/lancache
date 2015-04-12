#!/bin/bash

IP4=`/sbin/ifconfig eth1 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'`

if hash docker 2>/dev/null; 
then
	docker pull mpawlowski/lancache
	docker run -e HOST_ADDRESS=`echo $IP4` -it mpawlowski/lancache
else
	echo "docker not installed"
	exit 1	
fi
