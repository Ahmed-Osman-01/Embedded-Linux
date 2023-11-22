#!/usr/bin/bash
mkdir ~/myDirectory
echo -e "Created myDirecoty in home\n"
mkdir ~/myDirectory/secondDirectory
echo -e "Created secondDirectory inside myDirectory\n"
touch ~/myDirectory/secondDirectory/myNotePaper
echo -e "Created myNotPaper inside secondDirectory\n"
cp ~/myDirectory/secondDirectory/myNotePaper ~/myDirectory
echo -e "Copied myNotePaper into myDirectory\n"
mv ~/myDirectory/myNotePaper ~/myDirectory/myOldNotePaper
echo -e "Changed the name to myOldNotePaper\n"
