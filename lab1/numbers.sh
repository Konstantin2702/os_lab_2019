#!/bin/bash
touch numbers.txt
cp /dev/null numbers.txt
for((i = 0; i < $1; i++))
do
echo $(od -A n -t d -N 1 < /dev/urandom) >> numbers.txt
done