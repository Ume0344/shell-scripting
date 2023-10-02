#!/bin/bash

echo one two three >> test.txt
awk '{print $1}' test.txt # will print one. Awk is used to filter the file or command line output.
echo one,two,three
awk '{print $1}' test.txt # will print one,two,three
awk -F, '{print $2}' test.txt # To add the delimiter, here , is the delimiter and it will print two
echo "Just print it: Hello" | awk '{print $1}' # will print just
echo "Just print it: Hello" | awk -F: '{print $2}' # will print " Hello", note the space at the start of Hello
echo "Just print it: Hello" | awk -F: '{print $1}' | cut -c2- # To cut the space from start of Hello
