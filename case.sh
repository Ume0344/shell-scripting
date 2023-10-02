#!/bin/bash

case ${1,,} in 
    habiba | admin)
        echo "You are in!!!!"
        ;;
    help)
        echo "Cant help ya, help yourself"
        ;;
    *)
        echo "You can't be in"
esac
