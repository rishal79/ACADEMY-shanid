Q)Shell script to rename all ordinary files in a directory with filename.PID of shell


code:
#!/bin/bash
clear
PID=$$
for file in *; do
  if [ -f "$file" ]; then
    mv "$file" "$file.$PID"
  fi
done

Input:
sh rename.sh
ls

Output:
rename.sh.790*

Algorithm:
Step 1: Clear the terminal screen.
Step 2: Get the current process ID (PID) of the script.
Step 3: Store the PID in a variable named PID.
Step 4: Loop through each item in the current directory.
Step 5: For each item, check if it is a regular file.
Step 6: If it is a regular file, rename (move) the file by appending .$PID to its filename.
Step 7: If it is not a regular file, do nothing and continue with the next item.
Step 8: Repeat steps 5–7 until all items have been processed.