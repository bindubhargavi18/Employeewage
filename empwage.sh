#!/bin/bash -x
fulltime=1
parttime=2
empcheck=$((RANDOM%3))
wagePerHr=20
daysPerMonth=20
case $empcheck in
$fulltime)
empHrs=8
salary=$((wagePerHr*empHrs))
totalsalary=$((salary*daysPerMonth))
echo "salary for month is $totalsalary"
;;
$parttime)
empHrs=8
salary=$((wagePerHr*empHrs))
totalsalary=$((salary*daysPerMonth))
echo "salary of part time employee for month is $totalsalary"
;;
*)
empHrs=0
salary=0
echo "employee is absent"
;;
esac



