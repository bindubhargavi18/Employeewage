#!/bin/bash -x
fulltime=1
parttime=2
randomcheck=$((RANDOM%3))
wagePerHr=20

if [ $fulltime -eq $randomcheck ]
then
	empHrs=8
	salary=$((empHrs*wagePerHr))
	echo "Employee salary is $salary"
elif [ $parttime -eq $randomcheck ]
then
	empHrs=8
	salary=$((empHrs*wagePerHr))
	echo "Employee part time salary is $salary"
else
	empHrs=0
	salary=0
	echo "employee is absent, so salary is $salary"
fi

