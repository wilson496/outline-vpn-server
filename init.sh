#!/bin/bash


roleName=$1

echo "Creating host file, library location, and role directory"
touch host_files/$roleName.yml
mkdir roles
mkdir roles/$roleName

dirArray=(tasks handlers files var defaults meta libraries)
for dirName in ${dirArray[@]}
do
	echo "Directory created: roles/$roleName/$dirName"
	mkdir roles/$roleName/$dirName
done

echo -e "Project template created. \nPlease define your hostnames in host_files/$roleName.yml \nand your libraries/modules in roles/$roleName/libraries."
