#! /bin/bash

if [[ $# -ne 2 ]]; then
	echo "we need two parameters!"
else
	name1=$1;
	name2=$2;
fi

echo $name1 $name2
