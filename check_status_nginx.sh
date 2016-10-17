#!/bin/bash

nginx_pids=`pidof nginx`
if [ -z "$nginx_pids" ]; then
	echo "Instance not found!"
	exit
fi

status_code=`curl -I http://$1 2>/dev/null | head -n 1 | sed 's/.$//'`
echo $status_code
