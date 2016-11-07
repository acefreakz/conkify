#!/bin/bash

status_code=`curl -I -u $2:$3 http://$1 2>/dev/null | head -n 1 | sed 's/.$//'`
if [ ! -z $status_code ]; then
	echo $status_code && exit
fi


echo $status_code
