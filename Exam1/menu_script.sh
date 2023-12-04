#!/bin/bash

PS3='Please select your choice: '

select opt in "Option 1" "Option 2" "Option 3" "Quit"
do
	case $opt in
		"Option 1")
			date
			;;
		"Option 2")
			uptime
			;;
		"Option 3")
			users
			;;
		"Quit")
			break
			;;
		*)
			echo "Invalid Option!"
			;;
	esac
done
