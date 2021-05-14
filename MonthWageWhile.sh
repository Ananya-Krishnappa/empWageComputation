#!/bin/bash -x
isFullTime=1
isPartTime=2
numOfWorkingDays=20
maxHrsInMonth=100
empRatePerHr=20

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in
			$isFullTime)
					empHrs=4
					;;
			$isPartTime)
					empHrs=8
					;;
			*)
			empHrs=0
			;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
