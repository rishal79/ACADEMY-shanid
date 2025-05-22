# Shell Script Terms - Simple Explanations

This document explains common terms, symbols, and commands used in shell scripts with easy-to-understand definitions. Useful for beginners learning shell scripting.

---

## General Variables

| Term     | Meaning                    | Explanation |
|----------|----------------------------|-------------|
| `$0`     | Script name                | Shows the name of the script file itself. |
| `$1`, `$2`, etc. | Positional arguments | Inputs passed when the script is run. Example: `sh script.sh file1 file2` → `$1 = file1`, `$2 = file2`. |
| `$#`     | Number of arguments         | Tells how many arguments were passed. |
| `$$`     | Process ID (PID)            | A unique number for the running script process. Often used to make file names unique. |
| `$?`     | Exit status of last command | `0` means success, non-zero means error. |
| `$*`     | All arguments               | Refers to all input arguments. |
| `shift`  | Shift arguments             | Moves argument list left by one. `$2` becomes `$1`, and so on. |

---

## File Test Operators

| Term     | Meaning             | Explanation |
|----------|---------------------|-------------|
| `-f`     | Is a regular file   | True if it's a normal file. |
| `-d`     | Is a directory      | True if it's a folder. |
| `-a`     | Logical AND         | True if both conditions are true. |
| `-ne`    | Not equal           | Compares numbers. |
| `-gt`    | Greater than        | Example: `[ $# -gt 1 ]` means more than 1 argument. |
| `-eq`    | Equal to            | True if numbers are equal. |
| `-le`    | Less than or equal  | Used to compare numbers. |
| `! -f`   | Not a file          | True if file doesn't exist or is not a regular file. |

---

## Commands

| Command      | Use                          | Explanation |
|--------------|------------------------------|-------------|
| `echo`       | Display message              | Prints text on the screen. |
| `cd`         | Change directory             | Moves to another folder. |
| `mv`         | Move or rename               | Renames or moves files. |
| `rm`         | Remove file                  | Deletes a file. `-f` means force delete without prompt. |
| `cmp`        | Compare files                | Compares contents of two files. |
| `wc -l`      | Count lines                  | Tells number of lines in a file. |
| `wc -c`      | Count bytes                  | Shows size of file in characters (bytes). |
| `tail -n`    | Show last lines              | Displays last `n` lines. |
| `head -n`    | Show top lines               | Displays first `n` lines. |
| `tty`        | Terminal name                | Shows current terminal name. |
| `set $line`  | Break line into words        | Turns a line into separate word arguments. |
| `grep`       | Search for pattern in text   | Finds lines that contain a specific word or phrase. |
| `read`       | Read user input              | Reads a line from the user. |
| `read line`  | Read input line-by-line      | Reads one line and stores it in `line`. |
| `exec < file`| Redirect input               | Makes shell read from a file instead of keyboard. |
| `date -r`    | File timestamp               | Gets last modified time of a file. |
| `cut -d`     | Split line by delimiter      | Cuts part of a line by a character like space. |
| `expr`       | Arithmetic                   | Used for doing basic math like addition/subtraction. |
| `cp`         | Copy files                   | Copies one file to another. |
| `cat`        | Show file content            | Displays content of a file. |
| `=`          | String comparison            | Checks if two strings are the same. |

---

## Flow Control and Loops

| Keyword      | Use                   | Explanation |
|--------------|------------------------|-------------|
| `if`, `then`, `else`, `elif`, `fi` | Conditional blocks | Run commands only if certain conditions are met. |
| `for f in *` | Loop through items     | Repeats code for each item in a list (e.g., each file). |
| `while ... do ... done` | Loop while condition is true | Repeats the block until the condition becomes false. |
| `exit`       | Exit the script        | Ends the script early with optional status code. |

---

## Useful Snippets and Their Purpose

### Print Windows-style Directory View
```sh
for f in *
do
  if [ -d $f ]; then
    echo "$f <DIR>"
  else
    size=`cat $f | wc -c`
    echo "$f $size bytes"
  fi
done
