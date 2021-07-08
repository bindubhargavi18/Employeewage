#!/bin/bash -x
fulltime=1
parttime=2
empcheck=$((RANDOM%3))
wagePerHr=20
daysPerMonth=20
maxHrsinMonth=100
totalEmpHr=0
totalworkingdays=0

while [[ $totalEmpHr -lt $maxHrsinMonth && $totalworkingdays -lt $daysPerMonth ]]
do
((totalworkingdays++))
case $empcheck in
$fulltime)
empHrs=8
;;
$parttime)
empHrs=8
;;
*)
empHrs=0
;;
esac
totalEmpHr=$((totalEmpHr+empHrs))
done
totalsalary=$((totalEmpHr*wagePerHr))
