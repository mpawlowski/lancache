#!/bin/bash

if ! hash docker 2>/dev/null; 
then
	echo "docker not installed"
	exit 1
fi

docker pull mpawlowski/lancache
docker run --net="host" -it mpawlowski/lancache

