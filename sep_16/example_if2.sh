#! /bin/bash

if [ `wc -l < "$1"` -gt 10 ]
then
	echo "the file has more than 10 lines in it"
else
	echo "The file is nonexistent or small"
fi
