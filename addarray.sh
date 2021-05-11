#!/bin/bash

declare -a ass1 #First array declared for assignment 1 results
declare -a ass2 #Second array declared for assignemtn 2 results

ass1=(12 18 20 10 12 16 15 19 8 11) #First array showing assignment 1 results
ass2=(22 29 30 20 18 24 25 26 29 30) #Second array showing assignment 2 results
student=$((${#ass1[*]}+${#ass2[*]})) #Variable created adding assignment 1 and assignment 2 results from the arrays


for (( i=1; i<=${student}; i++)) #Each result counts up by 1 for each student's results
do
    echo -e "Student_$i Result: $student" #The students are listed in numerical order with their results.
done