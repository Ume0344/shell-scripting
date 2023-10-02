#!/bin/bash

sed '/s/moon/sun/g' test.txt # will change all occurances of moon to sun in test.txt. /s is substitute, 
#/g means we want to do substitute across the whole file
