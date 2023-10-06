#!/bin/bash
if [ ${1,,} = habiba ]; then # ,, converts the string to lowercase
    echo "Habiba is here"
elif [ ${1,,} = help ]; then
    echo "How can I help you, if you cant help yourself"
else
    echo "Habiba? 404 Not Found"
fi

read y

if [[ "$y" == "y" || "$y" == "Y" ]]; then
    echo "YES"
elif [[ "$y" == "n" || "$y" == "N" ]]; then
    echo "NO"
else
    echo "Invalid input"
fi
