 #!/bin/bash -x

#to find factors of a number

read -p "Enter number: " n;
for (( i=2; i<=$n; i++ ));do
    while [ $(($n%$i)) == 0 ];do
        echo $i
        n=$(($n/$i))
    done
done
