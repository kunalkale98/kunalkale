#!/bin/bash -x

emp_rate_per_hr=20
is_full_time=1
is_part_time=2
num_of_working_days=5
max_hrs_in_month=20

totalEmpHrs=0
totalWorkingDays=0

function getWorkHrs() {
	local empCheck=$1
	case  $empCheck in
		$is_full_time)
			empHrs=8
				;;
		$is_part_time)
			empHrs=4
				;;
		*)
			empHrs=0
				;;
	esac
	echo $empHrs
}

while [[ $totalEmpHrs -lt $max_hrs_in_month && $totalWorkingDays -lt $num_of_working_days ]]
do
   ((totalWorkingDay++))
   empCheck=$(( RANDOM%3 ))
	empHrs="$( getWorkHrs $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$emp_rate_per_hr))
