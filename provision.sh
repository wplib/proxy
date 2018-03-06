#!/bin/bash

CONTAINER="proxy-docker"
BASEDIR="/tmp"


# Determine version to run.
if [ "$1" == "" ]
then
	VERSION=latest
else
	VERSION="$1"
fi


# Pull from GitHub.
cd ${BASEDIR}
if [ -d ${BASEDIR}/${CONTAINER} ]
then
	cd ${BASEDIR}/${CONTAINER}
	git pull
	cd ${BASEDIR}
else
	git clone https://github.com/wplib/${CONTAINER}.git
fi

if [ -d ${BASEDIR}/${CONTAINER}/${VERSION} ]
then
	cd ${BASEDIR}/${CONTAINER}/${VERSION}
else
	echo "Version $VERSION of $CONTAINER doesn't exist."
	exit
fi

make stop
make rm
make clean
make build
make create
make start

