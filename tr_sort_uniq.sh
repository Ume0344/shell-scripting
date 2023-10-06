#replace () with []
tr '()' '[]'
# delete all a-z characters from string
tr -d ['a'-'z']

# reverse sort(-r) file.txt based on numbers(-n) written in second column(-k) delimited by tab(-t $'\t')
sort -n -r -k 2 -t $'\t' file.txt

# count the consecutive same lines
uniq -c text.txt| awk '{print $1, $2, $3}'

# print only unique lines
uniq -u text.txt
