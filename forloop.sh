#!/bin/bash

MY_FIRST_ARRAY=(one two three four five)

for item in ${MY_FIRST_ARRAY[@]}; do
    echo $item 
    echo -n $item | wc -c; # -n donot insert a new line at end of each item
done

for x in www.google.com www.facebook.com www.singing.com;
do 
    #/dev/null is the virtual device, and output of ping will stored in it. If ping is successful
    # the output is 0 stored in /dev/null
    # c flag is count of ping, w flag is for wait in miliseconds.
    if ping -q -c 2 -w 1 $x > /dev/null; then
        echo "$x is up"
    else
        echo "$x is down"
    fi
done

for x in $(cat test.txt);
do
    echo $x
done

# continue and break

for x in {1..20};
do
    if [$x=10]; then
        break
    echo $x
    fi
done
