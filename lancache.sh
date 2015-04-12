#!/bin/bash

if hash docker 2>/dev/null; 
then
	docker pull mpawlowski/lancache
	docker run -it mpawlowski/lancache
else
	echo "docker not installed"
	exit 1	
fi
