#!/bin/bash -x
empcheck=$(RANDOM%2)
isPresent=1
if [ $empcheck -eq $isPrime ]
then
	echo emp present
else
	echo emp not present
fi
