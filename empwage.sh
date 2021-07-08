#!/bin/bash -x
fulltime=1
randomcheck=$((RANDOM%2))
if [ $fulltime -eq $randomcheck ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
