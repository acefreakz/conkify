#!/bin/bash

# 
latestAlarmFilename=`grep "\[iptvuser\] OK UPLOAD: Client \"192.168.0.7\"" /var/log/vsftpd.log | grep -oE "/files.*A[0-9]*\.jpg" | tail -n 1`
echo "DEBUG: .latestAlarmFilename symlinked to: "$latestAlarmFilename

if [[ `readlink -f .latestAlarmImage` != *$latestAlarmFilename ]]; then
	echo "DEBUG: latestAlarmImage outdated, updating symlink!"
	ln -fs /home/iptvuser$latestAlarmFilename .latestAlarmImage
else
	echo "DEBUG: latestAlarmImage same file! No need update symlink!"
fi 
