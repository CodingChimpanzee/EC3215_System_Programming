#! /bin/bash

checkfile() {
	for file
	do
		if [ -f "$file" ]; then
			echo "$file is a file"
		elif [ -d "$file" ]; then
			echo "$file is a directory"
		fi
	done
}

checkfile . example_func1.sh
