#!/bin/bash
# Remove array element if it has 'a' in it
array=($(cat))
a='a'

for i in ${!array[@]};
do
   if [[ "${array[i]}" == *"$a"* ]];then
        unset array[i]
   fi  
done

echo ${array[@]}
