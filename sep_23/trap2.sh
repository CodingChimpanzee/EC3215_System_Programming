#! /bin/bash

trap 'justonce' 2

justonce () {
	echo "not yet"
	trap 2
}

while true; do
	echo -n ""
done
