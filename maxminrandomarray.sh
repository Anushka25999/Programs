#!/bin/bash -x

function randNum(){
	random=$((RANDOM%900+100))
	return $random;
	}

function print2largest(){
	array=("$@")

	largest=${array[0]}
	secondGreatest=0

	for((i=1; i < ${#array[@]}; i++))
	do
  	if [ ${array[i]} -gt $largest ]
  	then
    		secondGreatest=$largest
    		largest=${array[i]}
  	elif (( ${array[i]} != $largest )) && { [[ $secondGreatest -eq 0 ]] || [[ ${array[i]} -gt $secondGreatest ]]; }
  	then
    		secondGreatest=${array[i]}
  	fi
	done

	echo "secondGreatest = $secondGreatest"
}

function print2smallest(){
        array=("$@")

        smallest=${array[0]}
        secondSmallest=0

        for((i=1; i < ${#array[@]}; i++))
        do
        if [ ${array[i]} -lt $smallest ]
        then
                secondSmallest=$smallest
                smallest=${array[i]}
        elif (( ${array[i]} != $smallest )) && { [[ $secondSmallest -eq 0 ]] || [[ ${array[i]} -lt $secondSmallest ]]; }
        then
                secondSmallest=${array[i]}
        fi
        done

        echo "secondSmallest = $secondSmallest"
}


n=10
i=1
while [ $i -le $n ]
do
	randNum;
	array[i]=$?;
	((i++));
done

print2largest "${array[@]}";
print2smallest "${array[@]}";
