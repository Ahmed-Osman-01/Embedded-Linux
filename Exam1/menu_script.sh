#!/bin/bash

PS3='Please select your choice: '

select opt in "Display Date" "Display Uptime" "Display logged users" "Quit"
do
	case $opt in
		"Display Date")
			echo -e "Date:\n"
			date
			echo -e "\n"
			;;
		"Display Uptime")
			echo -e "Uptime:\n"
			uptime
			echo -e "\n"
			;;
		"Display logged users")
			echo -e "Users Info:\n"
			w
			echo -e "\n"
			;;
		"Quit")
			break
			;;
		*)
			echo "Invalid Option!"
			echo -e "\n"
			;;
	esac
done
