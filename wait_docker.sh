#!/bin/bash

count=0

while [ $count -le 30 ];
do
	echo $count

	containers=$(docker ps -q | wc -l)
  echo $containers
	if [ $containers -gt 0 ]
		then
			sleep 1m
		else
			break
	fi
	((count++))
done