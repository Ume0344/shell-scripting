# Shell Documentation
echo Hello
cat -> displays the content of file
```
cat shell.txt
```
- To sun a script, 
```
./script.sh
bash script.sh
echo $SHELL # gives the output of interpretor shell is using. For mycase, it is Bash
```

- Long format of ls command
```
ls -l
```
# Variables

To create a variable, 
```
NAME=Habiba
echo $NAME
```

- How to ask user input
```
echo Please Enter Your Name:
read NAME
echo Hello, $NAME
```

# Positional Arguments
```
echo Hello, $1
./shell.sh Habiba
```

# Input/Output Redirections / Pipes
- Pipes -> Sending output of one command to other command.
```
ls -l /usr/bin/ | grep bash

```

- Output Redirections -> Writing output of a command to a file (>)
```
echo Hello > hello.txt
echo World >> hello.txt # to append to file
```

- Input Redirection -> Getting inputs from file (<)
```
wc -w < test.txt # will output only word count of file.
```

 - <<
 ```
 cat << EOF
 I will complete 
 this tutorial soon
 EOF
 ```

 - <<< -> To supply single strings to command line tool
 ```
 wc -w <<< "To manipulate string" # will result 3
 ```

- wc command
```
wc -w hello.txt # will output word count and name of file
```

# Test Operators
```
echo $? to print the output of last command executed.

[ hello = hello ] $ To compare the two strings
```
- For numbers,
```
[ 23 = 41 ] # echo $? will result in 1 as two numbers are not equal.

[ 1 -eq 1] # to check if two numbers are equal, only for numbers
[ 1 -ne 1] # if two numbers are not equal, only for numbers
``` 

# String manipulation

```
$ string=01234567890abcdefgh
$ echo ${string:7}
7890abcdefgh
$ echo ${string:7:0}

$ echo ${string:7:2}
78
$ echo ${string:7:-2}
7890abcdef
$ echo ${string: -7}
bcdefgh
$ echo ${string: -7:0}

$ echo ${string: -7:2}
bc
$ echo ${string: -7:-2}
bcdef
$ set -- 01234567890abcdefgh
$ echo ${1:7}
7890abcdefgh
$ echo ${1:7:0}

$ echo ${1:7:2}
78
$ echo ${1:7:-2}
7890abcdef
$ echo ${1: -7}
bcdefgh
$ echo ${1: -7:0}

$ echo ${1: -7:2}
bc
$ echo ${1: -7:-2}
bcdef
$ array[0]=01234567890abcdefgh
$ echo ${array[0]:7}
7890abcdefgh
$ echo ${array[0]:7:0}

$ echo ${array[0]:7:2}
78
$ echo ${array[0]:7:-2}
7890abcdef
$ echo ${array[0]: -7}
bcdefgh
$ echo ${array[0]: -7:0}

$ echo ${array[0]: -7:2}
bc
$ echo ${array[0]: -7:-2}
bcdef
```