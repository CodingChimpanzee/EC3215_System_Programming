#! /bin/bash

read -p "Enter your name: " name

case $name in
	*[0-9]*)
		echo "Are you a daughter of Elon Musk?"
		;;
	A*|B*)
		echo "Your name starts with A or B, cool."
		;;
	*)
		echo "SoSo"
		;;
esac
