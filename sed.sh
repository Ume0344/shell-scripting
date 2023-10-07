#!/bin/bash

sed '/s/moon/sun/g' test.txt # will change all occurances of moon to sun in test.txt. /s is substitute, 
#/g means we want to do substitute across the whole file

# replaces all 'thy|Thy' with '{thy|Thy}'. I is case-insensitivity
sed 's/thy/{&}/gI'

# replaces the only whole word. eg, There is the best sportsman. He plays for the Manchester United
# This command will produce,  There is this best sportsman. He plays for the Manchester United.
# Anything between \b \b is considered as a whole word. So it wont replace 'the' in 'there'
sed 's/\bthe\b/this/'
