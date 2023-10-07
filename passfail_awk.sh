#!/bin/bash

#awk '{print $1, (($2>=50 && $3>=50 && $4>=50))? ": Pass" : ": Fail"}'
#awk '{if ($2>=50 && $3>=50 && $4>=50) { print $1 " : Pass" } else { print $1 " : Fail" } }'

# We can write a c program inside of awk '{ .... }'.
awk '
    {if ($2>=50 && $3>=50 && $4>=50) 
        {print $1 " : Pass";}
    else
        {print $1 " : Fail";}
    }
'

# Finding grade with awk https://www.hackerrank.com/challenges/awk-3/problem?isFullScreen=true
awk '{
    average=($2+$3+$4)/3
    if (average>80) {
        grade="A"
    }
    else if (average>60 && average<80) {
        grade="B"
    }
    else if (average>50 && average<60) {
        grade="C"
    }
    else {
        grade="FAIL"
    }
    printf "%s : %s\n", $0,grade
}'

# To concatenate two lines of a file with ; in between. NR gives current line number
awk '{
    printf $0
    if (NR%2==1) {
        printf ";"
    }
    else {
        printf "\n"
    }
}'
