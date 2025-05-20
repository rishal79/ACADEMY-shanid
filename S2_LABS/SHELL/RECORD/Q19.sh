Q)Shell script to display the content of a directory file in windows style


Code:

#!/bin/bash
clear
directory="$1"
ls -1 "$directory" | sed "s|^|$directory\\|"

Algorithm:
Step 1: Assign the first command-line argument to directory.
Step 2: Use ls -1 to list files in the directory.
Step 3: Use sed to prepend the directory path to each filename.


Input:
sh window.sh file1.txt

Output:
2025-05-20 14:59  212  compare.sh
2025-05-20 15:09  68  file1.txt
2025-05-20 14:58  11  file2.txt
2025-05-20 15:26  17  file3.txt
2025-05-20 15:26  118  linux.sh
2025-05-20 14:39  108  rename.sh.790
2025-05-20 15:08  40  reverse.sh
2025-05-20 15:43  151  windows.sh
2025-05-20 15:05  160  wordcount.sh
