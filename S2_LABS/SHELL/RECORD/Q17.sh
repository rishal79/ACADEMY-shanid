Q)Shell script to display a file from last line to first line



Code:
#!/bin/bash
clear
file="$1"
tac "$file"


Algorithm:
Step 1: Assign the first command-line argument to file.
Step 2: Use tac to print the contents of file in reverse line order.

Input:
----------------------create file1.txt--------------------
Hello good morning!
This is the first line
This is the second line

-----------------------------------------------------------

sh reverse.sh file1.txt


Output:
This is the second line
This is the first line
Hello good morning!


