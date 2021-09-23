#! /bin/bash

testfile() {
	if [ $# -gt 0 ]
	then
		if [[ -f $1 && -r $1 ]]
		then
			echo $1 is a readdable file
		else
			echo $1 is not a readdable file
		fi
	fi
}

testfile .
testfile example_func1.sh
