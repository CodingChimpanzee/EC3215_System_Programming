#! /bin/bash


if [ `ls -l` -gt 10 ]
then
	number = `ls -l`
	echo "File count: " $number
else
	number = `ls -l`
	echo "File count: " $number
fi
