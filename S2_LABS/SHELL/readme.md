# Simple Shell Script Commands and Terms

This guide explains common shell script commands in simple words. Great for beginners!

---

## Basic Special Words (Variables)

| Term     | Meaning                   | Simple Explanation |
|----------|---------------------------|--------------------|
| `$0`     | Script name               | The name of the script file itself. |
| `$1`, `$2` | First and second inputs | If you give input when running the script, these hold them. Example: `sh script.sh file1 file2` → `$1 = file1`, `$2 = file2`. |
| `$#`     | Number of inputs          | Tells how many inputs were given to the script. |
| `$$`     | Script process number     | A unique number for the running script. Helpful for naming files so they don't clash. |
| `$?`     | Result of last command    | `0` means success, any other number means error. |
| `$*`     | All input values          | Shows all the inputs together. |
| `shift`  | Move inputs               | Moves input list to the left. `$2` becomes `$1`, and so on. |

---

## Checking Files and Numbers

| Term     | Meaning            | Simple Explanation |
|----------|--------------------|--------------------|
| `-f`     | Is file            | Checks if something is a normal file. |
| `-d`     | Is folder          | Checks if something is a folder. |
| `-a`     | And condition      | Used when checking two things at once. |
| `-ne`    | Not equal          | Checks if two numbers are different. |
| `-eq`    | Equal              | Checks if two numbers are same. |
| `-gt`    | Greater than       | Checks if one number is bigger than another. |
| `-le`    | Less or equal      | Checks if one number is smaller or same. |
| `! -f`   | Not a file         | True if it's not a file. |

---

## Common Commands

| Command    | Use                        | Simple Explanation |
|------------|----------------------------|--------------------|
| `echo`     | Show message               | Displays text on the screen. |
| `cd`       | Go to another folder       | Changes the folder. |
| `mv`       | Rename or move file        | Renames or moves a file. |
| `rm`       | Delete file                | Removes a file. `-f` means delete without asking. |
| `cmp`      | Compare two files          | Checks if two files are the same. |
| `wc -l`    | Count lines in a file      | Tells how many lines are in the file. |
| `wc -c`    | Count characters           | Tells how big the file is in characters. |
| `tail -n`  | Show last lines            | Shows last `n` lines of a file. |
| `head -n`  | Show first lines           | Shows first `n` lines of a file. |
| `tty`      | Get terminal name          | Shows the name of the terminal (screen). |
| `set $line`| Split line into words      | Turns a line into words. |
| `grep`     | Search in text             | Looks for a word in text. |
| `read`     | Get input from user        | Lets user type something. |
| `exec < file` | Use file as input       | Makes the script read from a file, not from keyboard. |
| `date -r`  | Get file’s date and time   | Shows when the file was last changed. |
| `cut -d`   | Split using symbol         | Cuts a part of line using a symbol like space or comma. |
| `expr`     | Do math                    | Does simple math like adding or subtracting. |
| `cp`       | Copy files                 | Makes a copy of a file. |
| `cat`      | Show file content          | Shows what’s inside a file. |
| `=`        | Compare words              | Checks if two words are the same. |

---

## Controlling the Script

| Word       | Meaning            | Simple Explanation |
|------------|--------------------|--------------------|
| `if`, `then`, `else`, `fi` | Make decisions | Runs certain lines only if some condition is true. |
| `elif`     | Else if            | Checks another condition if the first one failed. |
| `for`      | For loop           | Repeats some lines for each file or value. |
| `while`    | While loop         | Repeats some lines while a condition is true. |
| `exit`     | Stop script        | Ends the script. |

---

## Example Uses (Snippets)

### Show files like Windows
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
