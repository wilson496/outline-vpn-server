#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters. Please specify role to remove."
	echo "e.g. ./cleanRole.sh foo"
	exit 1
fi

rm -r roles/$roleName
rm -r libraries/$roleName
rm host_files/$roleName.yml

