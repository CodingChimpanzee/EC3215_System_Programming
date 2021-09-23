#! /bin/bash

# Before that, check exixtance

if [ $# -ne 2 ]
then
	echo "Error: we need two arguments!"
	exit
fi

if [ -e $2 ]
then
	rm $2
fi

# Check the duplication!

prev='NULL'

cat $1 | sort | while read line
do
	if [ $prev != $line ]
	then
		echo $line >> $2
	fi
	prev=$line
done
