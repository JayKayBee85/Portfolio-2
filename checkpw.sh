#!/bin/bash

#The awk statement begins with a file separator and sets the variable as pwrd for the second entry. pwrd does not use a $ symbol when used in awk.
#NR removes the first line as the headings are not printed.
#If statement used as there are two different results from the test.
#If the password is a minimum of 8 characters (%8s)), includes at least 1 number ([0-9]+$), and at least 1 uppercase letter ([A-Z]+$0)
#The first printf (password) is entered with the first message.
#If the pattern does not match the second message is printed. The script then ends.
awk 'BEGIN {FS=","
            pwrd=$2;
            }
    NR>1 {
        if ($2 ~ %8s,[0-9]+$,[A-Z]+$)
            {
            printf pwrd " - meets password strength requirements"
            }
        else
            { 
            printf pwrd " - does NOT meet password strength requirements"'
            }
}
END

exit 0