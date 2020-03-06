#!/bin/bash
touch numbers.txt
cp /dev/null numbers.txt
for((i = 0; i < $1; i++))
do
echo $RANDOM >> numbers.txt
done