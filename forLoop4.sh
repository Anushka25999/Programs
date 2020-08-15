#!/bin/bash -x
read -p "Enter lower bound of the range: " a;
read -p "Enter upper bound of the range: " b;

for (( i=$a; i<=$b; i++ ))
do
	flag=0;
	for (( j=2; j<=$i/2; j++ ))
	do
		if [ $((i%j)) -eq 0 ]; then
			flag=1;
                	break;
		fi
	done

	if [ $flag -eq 0 ]; then
		echo "$i is a prime number";
	fi
done
