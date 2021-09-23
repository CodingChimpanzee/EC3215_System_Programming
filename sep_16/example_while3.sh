#!/bin/bash

cat /etc/passwd | head | while read line
do
	echo $line
done
