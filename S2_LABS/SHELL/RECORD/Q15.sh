Q)Shell script to compare two files. If the files are identical delete one


Code:

#!/bin/bash
clear
file1="$1"
file2="$2"
# Compare the files
if cmp -s "$file1" "$file2"; then
  echo "Files are identical. Deleting '$file2'."
  rm "$file2"
else
  echo "Files are different. No action taken."
fi



Algorithm:
Step 1: Assign the first command-line argument to the variable file1.
Step 2: Assign the second command-line argument to the variable file2.
Step 3: Use the cmp command with the -s (silent) option to compare file1 and file2.
Step 4: If the files are identical:
        Print a message stating that the files are identical.
        Delete file2.
Step 5: If the files are different:
        Print a message stating that the files are different.
        Do not delete any files.


Input:
sh compare.sh file1.txt file2.txt


Output:
Files are different. No action taken.

