#!/bin/bash

MY_FIRST_ARRAY=(one two three four five) # a global variable

function for_loop {
    local MY_FIRST_ARRAY=(1 2 3 4 5) # a local variable
    for item in ${MY_FIRST_ARRAY[@]}; do
    echo $item 
    echo -n $item | wc -c; # -n donot insert a new line at end of each item
done
}

function with_arguments {
    echo Hello $1
}

show_uptime() {
    up=$(uptime -p | cut -c4-)
    since=$(uptime -s)
    cat << EOF
-------
Machine is up for ${up} since ${since}
-------
EOF
}

for_loop
show_uptime
with_arguments Habiba
