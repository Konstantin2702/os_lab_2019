#!/bin/bash
sum=0
count=0
av=0
if  [ $# -eq 0 ]
then
	while read LINE
	do 
		count=$[count + 1]
		sum=$[sum + $LINE]
	done
	av=$[sum / $count]
	echo "Количество параметров" $count
 	echo "Среднее значение" $av
else
	for params in $@
	do
		sum=$[sum + $params]
	done
	av=$[sum / $#]
	echo "Количество параметров" $#
 	echo "Среднее значение" $av
fi