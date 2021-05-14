#!/bin/bash -x
isFullTime=1
isPartTime=2
numofWorkingDays=20
maxHrsInMonth=4
empRatePerHr=20
totalEmphr=0
totalWorkingDays=0

function getWorkingHours() {
		case $1 in
			$isFullTime)
					workHrs=4
					;;
			$isPartTime)
					workHrs=8
					;;
			*)
				workHrs=0
				;;
		esac
		echo $workHrs
}
while [[ $totalEmphr -lt $maxHrsInMonth && $totalWorkingDays -lt $numofWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	workHrs="$(getWorkingHours $empCheck)"
	totalEmphr=$(($totalEmphr+$workHrs))
done
totalSalary=$(($totalEmphr*$empRatePerHr))
