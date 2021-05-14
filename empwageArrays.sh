#!/bin/bash -x 
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
numofWorkingDays=20
totalEmpHr=0
totalWorkingDays=0
function getWorkingHours() {
	case $1 in
		$isPartTime)
				workhrs=8
				;;
		$isFulltime)
				workhrs=4
				;;
		*)
			workhrs=0
			;;
	esac
	echo $workhrs
}
function calculatewage(){
	local workhrs=$1
	wage=$(($workhrs*$empRatePerHr))
	echo $wage
} 
while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numofWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3)) 
	workhrs="$(getWorkingHours $empCheck)"
	totalEmpHr=$(($totalEmpHr+$workhrs))
	empDailyWage[$totalWorkingDays]=$(($workhrs*$empRatePerHr))
done
totalSalary="$(calculatewage $totalEmpHr)"
echo Daily wage: ${empDailyWage[@]}
