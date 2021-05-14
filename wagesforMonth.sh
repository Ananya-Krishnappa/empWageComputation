#!/bin/bash -x 
isFullTime=1
isPartTime=2
numOfWorkingDays=20
totalSalary=0
empRatePerHr=20
for((day=1; day<=$numOfWorkingDays; day++))
do
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
salary=$(($empHrs*$empRatePerHr))
totalSalary=$(($totalSalary+$salary))
done
