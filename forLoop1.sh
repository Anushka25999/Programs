#!/bin/bash -x
read -p "Enter a number: " n;
power=1;
for (( i=0; i<=$n; i++ ))
do
	echo "$i	$power";
	power=$(( 2*$power ));
done

