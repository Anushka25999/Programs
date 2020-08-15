#!/bin/bash -x
read -p "Enter a number: " n;
power=1;
i=0;
while [ $i -le $n ]
do
        echo "$i        $power";
        power=$(( 2*$power ));
	if [ $power -eq 256 ]; then
		break;
	fi
	((i++));
done
