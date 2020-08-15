#!/bin/bash -x
read -p "Enter date: " dat;
d=$(date +"%d-%B" -d $dat);
start=$(date +"%d-%B" -d "20-March");
end=$(date +"%d-%B" -d "20-June");
if [ "$d" \>= "$start" ] && [ "$d" \<= "$end" ];
then
	echo "True";
else
	echo "False";
fi 
