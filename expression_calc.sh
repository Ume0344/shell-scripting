#!/bin/bash
read expression

echo $expression | bc -l | xargs printf "%.3f" # xargs take the standard input or input from file and then take this input as argument
# for next command here it is printf

read n
declare -A nums
sum=0

for((i=0; i<$n; i++)); 
do
    read nums[$i]
    sum=$(($sum+${nums[$i]}))
done

echo $sum/$n | bc -l | xargs printf "%0.3f"