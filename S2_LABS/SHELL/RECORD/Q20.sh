Q)Shell script to print specified range of lines from given files

Code:
#!/bin/bash
clear
FILE=$1
START_LINE=$(echo $2 | cut -d'-' -f1)
END_LINE=$(echo $2 | cut -d'-' -f2)
sed -n "${START_LINE},${END_LINE}p" "$FILE"

Input:
--------------------file1.txt--------------------------
Hello good morning!
This is the first line
This is the second line

-------------------------------------------------------
sh range.sh file1.txt 2-3

Output:
This is the first line
This is the second line


Algorithm:
Step 1: Assign the first command-line argument to FILE.
Step 2: Extract the starting line number from the second argument and store it in START_LINE.
Step 3: Extract the ending line number from the second argument and store it in END_LINE.
Step 4: Use sed to print lines from START_LINE to END_LINE from the file FILE.