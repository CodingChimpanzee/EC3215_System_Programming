#! /bin/bash

global="pretty good variable"

foo () {
	local inside="nicht so gut variable"
	echo $global
	echo $inside
	global="better variable"
}

echo $global
foo
echo $global
echo $inside
