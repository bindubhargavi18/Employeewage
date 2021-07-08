#!/bin/bash -x
fulltime=1
parttime=2
randomcheck=$((RANDOM%3))
wagePerHr=20

case $randomcheck in
$fulltime)
empHrs=8
salary=$((wagePerHr*empHrs))
echo "salary of employee is $salary"
;;
$partime)
empHrs=8
salary=$((wagePerHr*empHrs))
echo "salary of part time employee is $salary"
;;
*)
empHrs=0
salary=0
echo "employee is absent"
;;
esac




