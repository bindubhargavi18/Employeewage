#!/bin/bash -x
fulltime=1
parttime=2
wagePerHr=20
daysPerMonth=20
maxHrsinMonth=100
totalEmpHr=0
totalworkingdays=0

function workinghours
{
case $1 in
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
echo $empHrs
}

while [[ $totalEmpHr -lt $maxHrsinMonth && $totalworkingdays -lt $daysPerMonth ]]
do
((totalworkingdays++))
empHrs="$( workinghours $((RANDOM%3)) )"
totalEmpHr=$((totalEmpHr+empHrs))
done
totalsalary=$((totalEmpHr*wagePerHr))
