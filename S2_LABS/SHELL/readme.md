# Shell Script Terms - Simple Explanations

This document explains common terms, symbols, and commands used in shell scripts with easy-to-understand definitions.

---

## General Variables

| Term     | Meaning                    | Explanation |
|----------|----------------------------|-------------|
| `$0`     | Script name                | Shows the name of the script file itself. |
| `$1`, `$2`, etc. | Positional arguments | Inputs passed when the script is run. Example: `sh script.sh file1 file2` → `$1 = file1`, `$2 = file2`. |
| `$#`     | Number of arguments         | Tells how many arguments were passed. |
| `$$`     | Process ID (PID)            | A unique number for the running script process. Often used to make file names unique. |
| `$?`     | Exit status of last command | `0` means success, non-zero means error. |

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
| `tail -n 1`  | Show last line               | Displays the last line of a file. |
| `head -n`    | Show top lines               | Displays the first `n` lines. |
| `tty`        | Terminal name                | Shows current terminal name. |
| `set $line`  | Break line into words        | Turns a line into separate word arguments. |
| `grep`       | Search for pattern in text   | Finds lines that contain a specific word or phrase. |
| `read line`  | Read input line-by-line      | Reads one line and stores it in `line`. |
| `exec < file`| Redirect input               | Makes shell read from a file instead of keyboard. |

---

## Flow Control and Loops

| Keyword      | Use                   | Explanation |
|--------------|------------------------|-------------|
| `if` `then` `else` `elif` `fi` | Conditional blocks | Run commands only if certain conditions are met. |
| `for i in *` | Loop through items     | Repeats code for each item in a list (e.g., each file). |
| `while ... do ... done` | Loop while condition is true | Repeats the block until the condition becomes false. |
| `exit`       | Exit the script        | Ends the script early with optional status code. |

---

## Useful Examples

```sh
if [ $# -ne 1 ]
then
  echo "Usage: $0 <filename>"
  exit 1
fi

mv oldname.txt newname.txt
