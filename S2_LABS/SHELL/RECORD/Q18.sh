Q)Shell script to delete all lines if a file containing word linux


Code:

#!/bin/bash
clear
file="$1"
sed -i '/linux/d' "$file"
echo "Lines containing 'linux' have been deleted from '$file'."


Algorithm:
Step 1: Assign the first command-line argument to file.
Step 2: Use sed -i to delete lines containing the word "linux" from file.
Step 3: Print a message confirming that lines containing "linux" have been deleted from file.


Input:
--------------------------file3.txt----------------------
This line contains the word linux
Line without the word

----------------------------------------------------------------
sh linux.sh file3.txt


Output:
Lines containing 'linux' have been deleted from 'file3.txt'.