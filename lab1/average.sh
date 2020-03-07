#!/bin/bash
sum=0
count=0
av=0
if  [ $# -eq 0 ]
then
	while read LINE
	do 
    let "count = count + 1"
	let	"sum = sum + $LINE"
	done
    let "av = sum / count"
	echo "Количество параметров" $count
 	echo "Среднее значение" $av
else
	for params in $@
	do
    let "sum = sum + $params"
	done
    let "av = sum / $#"
	echo "Количество параметров" $#
 	echo "Среднее значение" $av
fi