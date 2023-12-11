#!/usr/bin/bash

read -p "Enter name of user: " name
read -p "Enter password: " password1
read -p "Re-Enter password: " password2

if [ "$password1" != "$password2" ]; then
	echo "Mismatched password"
	echo "Aborting script..."
	exit 1
elif [ "$password1" = "$password2" ]; then
	echo "Passwords match :)"
fi

read -p "Enter Full Name: " fName
read -p "Enter Room Number: " rNum
read -p "Enter Phone number: " phNum

echo "Creating new user with name $name..."

printf "$password1\n$password1\n$fName\n$rNum\n$phNum\n\n\ny\n" | \
sudo adduser "--force-badname" "$name"

if [ $? -eq 0 ]; then
	echo "User created successfully!"
else
	echo "Failed to create the user :(, aborting..."
	exit 1
fi

echo "Checking if familyName group exist"

if [ $(getent "group" "familyName") ]; then
	echo "Group already exist"
else
	echo "Group doesn't exist, creating familyName group..."
	sudo addgroup "--force-badname" "familyName" 
	 if [ $? -eq 0 ]; then
	 	echo "Group created"
	 else
	 	echo "group creation failed, aborting..."
	 	exit 1
	 fi
fi



echo "Adding $name user to familyName group..."
sudo usermod -aG "familyName" "$name"
if [ $? -eq 0 ]; then
	echo "Added $name to familyNamy successfully :)"
else
	echo "Failed to add $name to familyName :(, aborting"
	exit 1
fi

echo "Displaying user info: "
tail "-n" "5" "/etc/passwd" | grep "$name:"

echo "Displaying group info: "
tail "-n" "5" "/etc/group" | grep "familyName:"




