#! /bin/bash

# kill -1 won't kill this process
# kill -2 will

trap 'echo dont hang up' 1

while true
do
	echo "try to hang up"
	sleep 1
done
