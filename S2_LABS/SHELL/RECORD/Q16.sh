Q)Shell script to count the number of words and lines in a file


Code:
#!/bin/bash
clear
file="$1"
lines=$(wc -l < "$file")
words=$(wc -w < "$file")
echo "File: $file"
echo "Number of lines: $lines"
echo "Number of words: $words"


Algorithm:
Step 1: Assign the file path to file.
Step 2: Count lines in file and store in lines.
Step 3: Count words in file and store in words.
Step 4: Print the file name.
Step 5: Print the number of lines.
Step 6: Print the number of words.


Input:
$ sh wordcount.sh file1.txt


Output:
File: file1.txt
Number of lines: 1
Number of words: 3

