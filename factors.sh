#!/usr/bin/env bash
# Factorize many numbers as possible to a product of two smaller numbers.

while IFS= read -r LINE
do
	let FLAG=1
	let DIV=2
	while [ $FLAG -eq 1 ]
	do
		let REST=$(($LINE%$DIV))
		if [[ $REST -eq 0 ]]
		then
			let NUM=$LINE
			let COUNT=$(($NUM/$DIV))
			echo "$LINE=$COUNT*$DIV"
			let FLAG=0
		fi
		let DIV=$(($DIV+1))
	done
done < $1
