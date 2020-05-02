#!/bin/bash

# https://www.cyberciti.biz/faq/bash-while-loop/
# https://losst.ru/vyvod-v-fajl-bash-v-linux

function factoria {
	factorial=1
	while [ $counter -gt 0 ]
	do
	   factorial=$(( $factorial * $counter ))
	   counter=$(( $counter - 1 ))
	done
	echo $factorial
}

file="inputs.txt"
file2="outputs.txt"

Numb=20 # max_limit

for (( i=1; i <= $Numb; i++ ))
do
	echo $i >> $file
done


for i in $(cat $file)

do
	counter=$i
	result=$( factoria )

	echo "The factorial $counter = $result" >> $file2
done