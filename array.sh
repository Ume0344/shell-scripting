#!/bin/bash

MY_FIRST_ARRAY=(one two three four five)

echo ${MY_FIRST_ARRAY[@]} # Printing all elements of array
echo ${MY_FIRST_ARRAY[0]} # Printing a element of array

# populating array
declare -a array
count=0
while read line;
do
   array[$count]=$line
   ((count++))
done

echo ${array[@]} # printing all elements of array
echo ${array[3]} # prinitng 4th eleement of array
echo ${#array[@]} # printing number of elements in array

# Reading a file to an array
arr=($(cat))

# to slice array
echo ${array[@]:3:5} # 3 is start of slice and 5 is number of items starting from 3rd element

# Concatenation of arrays
declare -a array
count=0
while read line;
do
   array[$count]=$line
   ((count++))
done

conc=("${array[@]}" "${array[@]}" "${array[@]}")
echo ${conc[@]}


