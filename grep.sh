#!/bin/bash

# -i for ignoring case-sensitivity and -w for matching whole words
grep -w -i 'that\ | then\ | this' <file_name> 

# https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-5/problem?isFullScreen=true

# This question can be solved through regex expressions.
# what this regex expression is doing '\([0-9]\)' this is a group of digits from 0-9 anything inside '()' are considered as a group.
# then '\s' is a space. '{0,1}' it is allowing 0 or 1 occurance of \s (preceeding character). '\1'  refers back to what was captured 
# by the first capturing group which could be one of 0-9 digit.. So, it would search for expressions like '2 2', '0 0' and so on
grep '\([0-9]\)\s\{0,1\}\1' file.txt

# Select non-matching lines
grep -v 'that' file.txt
