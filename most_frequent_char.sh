#!/bin/bash

# Find the most occurring character in string
string=$1
declare -A char_arr

for ((i=0; i<${#string}; i++));
do
    char=${string:i:1} # accessing a char in string
    ((char_arr[$char]++)) # creating a type of dict, char_arr = {a:2,b:3}
done

max_count=0
freq_char=""

for char in ${!char_arr[@]}; # this to get keys in dict. if char_arr = {a:2,b:3}, this will give [a, b]
do  
    count=${char_arr[$char]}
    if ((count>$max_count)); then
        max_count=$count
        freq_char=$char
    fi
done
