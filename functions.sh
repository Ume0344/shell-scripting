#!/bin/bash

MY_FIRST_ARRAY=(one two three four five)

function for_loop {
    for item in ${MY_FIRST_ARRAY[@]}; do
    echo $item 
    echo -n $item | wc -c; # -n donot insert a new line at end of each item
done
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
