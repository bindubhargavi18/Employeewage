#!/bin/bash -x
fulltime=1
randomcheck=$((RANDOM%2))
wagePerHr=20
empHrs=8

if [ $fulltime -eq $randomcheck ]
then
	salary=$((wagePerHr*empHrs))
else
	salary=0
fi
