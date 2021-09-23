#!/bin/bash

read -p "Enter calls handled: " CHandle
read -p "Enter calls closed: " CClose

if [[ "$CHandle" -gt 150 && "$CClose" -gt 50 ]]
then
	echo "You are entitled to the best bonus"
elif [[ "$CHandle" -gt 150 || "$CClose" -gt 50 ]]
then
	echo "You are entitled to a bonus"
else
	echo "You get a bonus if the calls"
	echo "Handled exceeds 150 or"
	echo "calls closed exceeds 50"
fi
