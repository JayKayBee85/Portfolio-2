#!/bin/bash

pre="<tr><td>"
post="<\/td><\/tr>"
mid="<\/td><td>" #Three variables are created to remove the html code from the document, leaving the remaining values to perform calculations with and construct a table.
 #cat used to access the data in the html document. Grep used to extract the table data. Sed used to remove the html code, leaving the data to be calculated.Awk is used to set the file separator, add the total amounts, and print the attack
cat attacks.html | grep "<td>" | sed -e "s/^$pre//g;s/$post$//g; s/$mid/ /g" | awk '{FS=","; total=($2+$3+$4); printf "%-15s %10s \n", $1, $2 }' #- and total in 2 columns, 15 characters and 10 characters long, on a new line with each result.
echo -e "Attacks" " " "Instances(Q3)" #The two headings are echoed onto the page first.
print $1 "  " "total" #The first column is printed out under Attacks, and the total amount added in $2, $3, $4 is printed in the second column under Instances (Q3).