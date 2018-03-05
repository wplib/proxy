#!/bin/bash

CONTAINER="proxy-docker"
if [ "$1" == "" ]
then
	VERSION=latest
else
	if -d ${CONTAINER}/$1
	then
		VERSION="$1"
	else
		echo "Version $VERSION of $CONTAINER doesn't exist."
		exit
	fi
fi


cd /tmp
git clone https://github.com/wplib/${CONTAINER}.git

cd ${CONTAINER}/$VERSION
make stop
make rm
make clean
make build
make create
make start

