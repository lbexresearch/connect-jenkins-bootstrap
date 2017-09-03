#!/bin/bash

while : ; do
	if curl -fs localhost:8080 > /dev/null ; then
    	curl -X POST localhost:8080/job/$1/build
    	break
	else
    	sleep 1
	fi
done

