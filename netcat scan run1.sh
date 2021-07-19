#!/bin/bash
y = [1..254]
do
	let x=21
	while [ $x -lt 81 ]
	do nc -w1 -nvz 10.50.0.$y $x > /dev/null 2>&1
		if [[ $? == 0 ]]; then
			echo "$x is open on 10.50.0.$y" >> /home/results.txt
		fi
	let x=(x+1)
done
