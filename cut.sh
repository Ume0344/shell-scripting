#!/bin/bash

#Display letter
while read line;
do
    echo $line | cut -c 3 # 3rd letter
    echo $line | cut -c 3,7  # 3rd and 7th
    #echo ${line:1:7} # 2 to 7th
    echo $line | cut -c 2-7 # 2 to 7th
    echo "$line" | cut -f 1-3 # displays 1-3 words delimited by default demlimiter tab
    echo "$line" | cut -f 3- -d " " # displays 3rd to last words delimited by space " "
done
