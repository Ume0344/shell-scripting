#!/bin/bash

MY_FIRST_ARRAY=(one two three four five)

for item in ${MY_FIRST_ARRAY[@]}; do
    echo $item 
    echo -n $item | wc -c; # -n donot insert a new line at end of each item
done
