#!/bin/bash
Cont="Y"
while [ $Cont = "Y" ];
do
	ps -A # Select all processes.
	read -p "Want to continue? (Y/N)" reply
	Cont=`echo $reply | tr [:lower:] [:upper:]`
done

echo "done"
