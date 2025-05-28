#!/bin/bash

read -p "Enter the upper limit to the numbers you looking for : " n

read -p "Enter your choice: 1 for even numbers or 2 for odd numbers: " choice

case "$choice" in

1)
	echo "Even numbers upto $n are: "
	for ((i=1;i<=n;i++));
	do
		if (( i % 2 == 0 ));
		then echo "$i"
		fi
	done
	;;
2) 
	echo "Odd numbers upto $n are: "
	for ((i=1;i<=n;i++));
	do
		if (( i % 2 != 0 ));
		then echo "$i"
		fi
	done
	;;
*)
	echo "Invalid choice";;

esac
