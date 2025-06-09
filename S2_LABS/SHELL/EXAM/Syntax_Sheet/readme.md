# Shell Comparison and Logical Operators Explained

## 1. Comparison Operators

| Operator | Meaning               | Use in `[ ]` or `[[ ]]`           | Example                         |
|----------|-----------------------|----------------------------------|--------------------------------|
| `-eq`    | equals (numbers)      | Inside `[ ]` or `[[ ]]`          | `[ $a -eq $b ]` means `a == b` |
| `-ne`    | not equals (numbers)  | Inside `[ ]` or `[[ ]]`          | `[ $a -ne $b ]` means `a != b` |
| `==`     | equals (strings)      | Inside `[[ ]]`                   | `[[ $str == "hello" ]]`        |
| `!=`     | not equals (strings)  | Inside `[ ]` or `[[ ]]`          | `[ "$str" != "bye" ]`          |
| `<`      | less than (strings)   | Inside `[[ ]]` only              | `[[ $str1 < $str2 ]]`          |
| `-lt`    | less than (numbers)   | Inside `[ ]` or `[[ ]]`          | `[ $a -lt $b ]` means `a < b`  |
| `>`      | greater than (strings)| Inside `[[ ]]` only              | `[[ $str1 > $str2 ]]`          |
| `-gt`    | greater than (numbers)| Inside `[ ]` or `[[ ]]`          | `[ $a -gt $b ]` means `a > b`  |
| `-ge`    | greater or equal (num)| Inside `[ ]` or `[[ ]]`          | `[ $a -ge $b ]` means `a >= b` |
| `-le`    | less or equal (num)   | Inside `[ ]` or `[[ ]]`          | `[ $a -le $b ]` means `a <= b` |

---

### Other useful operators:

| Operator | Meaning                       | Use inside `[[ ]]`         | Example                         |
|----------|-------------------------------|----------------------------|--------------------------------|
| `=~`     | Regex pattern matching         | Inside `[[ ]]` only        | `[[ $str =~ ^[0-9]+$ ]]`       |

---

### Notes:

- Use numeric operators (`-eq`, `-ne`, `-lt`, `-gt`, `-ge`, `-le`) **for integers**.
- Use string operators (`==`, `!=`, `<`, `>`, `=~`) **inside `[[ ]]`**.
- Always **quote variables** inside `[ ]` to avoid errors, e.g., `[ "$var" == "text" ]`.

---

## 2. When to Use `[ ]`, `[[ ]]`, and `(( ))`

| Syntax   | Description                          | When to use                       | Example                         |
|----------|------------------------------------|---------------------------------|--------------------------------|
| `[ ]`    | Classic test command                | Simple tests, POSIX-compatible   | `[ "$a" -eq 5 ]`               |
| `[[ ]]`  | Advanced test command (bash only)  | Safer, supports strings & regex | `[[ $str == "hello" ]]`        |
| `(( ))`  | Arithmetic evaluation               | Numeric calculations             | `(( a > b ))`                  |

- `[ ]` requires quoting variables to prevent errors.
- `[[ ]]` is safer: no need to quote variables as strictly, supports regex and pattern matching.
- `(( ))` is for arithmetic expressions; no `$` needed on variables inside.

---

## 3. Logical Operators: `-a` & `&&`, `-o` & `||`

| Operator | Meaning      | Used inside or outside `[ ]` / `[[ ]]` | Example                                  |
|----------|--------------|----------------------------------------|-----------------------------------------|
| `-a`     | AND          | Inside `[ ]`                           | `[ $a -gt 5 -a $b -lt 10 ]`             |
| `-o`     | OR           | Inside `[ ]`                           | `[ $a -lt 5 -o $b -gt 10 ]`             |
| `&&`     | AND          | Outside `[ ]` / `[[ ]]` (command comb) | `[[ $a -gt 5 ]] && echo "ok"`            |
| &#124;&#124; | OR        | Outside `[ ]` / `[[ ]]` (command comb) | `[[ $a -lt 5 ]]  ll echo "no"` |


- `-a` and `-o` combine conditions **inside** `[ ]`.
- `&&` and `||` combine commands or tests **outside** brackets.
- Using `&&` and `||` is generally preferred over `-a` and `-o` for clarity and fewer bugs.

---

## 4. Example Script with All Operators

```bash
#!/bin/bash

a=10
b=20
str1="apple"
str2="banana"
num_str="12345"

# Numeric comparisons
if [ "$a" -lt "$b" ]; then
  echo "$a is less than $b"
fi

if [ "$a" -ge 10 ]; then
  echo "$a is greater or equal to 10"
fi

if [ "$a" -ne "$b" ]; then
  echo "$a is not equal to $b"
fi

# String comparisons (using [[ ]])
if [[ $str1 == $str2 ]]; then
  echo "$str1 equals $str2"
else
  echo "$str1 does not equal $str2"
fi

if [[ $str1 < $str2 ]]; then
  echo "$str1 is lexically less than $str2"
fi

# Regex match (only in [[ ]])
if [[ $num_str =~ ^[0-9]+$ ]]; then
  echo "$num_str contains only digits"
fi

# Arithmetic evaluation (( ))
if (( a + 5 == b )); then
  echo "$a plus 5 equals $b"
fi

# Logical AND inside [ ]
if [ "$a" -gt 5 -a "$b" -lt 30 ]; then
  echo "Both numeric conditions true (using -a)"
fi

# Logical AND outside with &&
if [[ $a -gt 5 ]] && [[ $b -lt 30 ]]; then
  echo "Both numeric conditions true (using &&)"
fi

# Logical OR inside [ ]
if [ "$a" -eq 5 -o "$b" -eq 20 ]; then
  echo "At least one condition is true (using -o)"
fi

# Logical OR outside with ||
if [[ $a -eq 5 ]] || [[ $b -eq 20 ]]; then
  echo "At least one condition is true (using ||)"
fi
````

---

## Summary Table

| Operator | Type              | Usage                        | Notes                          |
| -------- | ----------------- | ---------------------------- | ------------------------------ |
| `-eq`    | Numeric equals    | `[ "$a" -eq "$b" ]`          | Numbers only                   |
| `-ne`    | Numeric not equal | `[ "$a" -ne "$b" ]`          | Numbers only                   |
| `==`     | String equals     | `[[ $str == "value" ]]`      | Strings only, safer inside `[[ ]]` |
| `!=`     | String not equal  | `[ "$str" != "value" ]`      | Works in both `[ ]` and `[[ ]]`|
| `<`      | String less than  | `[[ $str1 < $str2 ]]`        | Strings only, `[[ ]]` only     |
| `>`      | String greater    | `[[ $str1 > $str2 ]]`        | Strings only, `[[ ]]` only     |
| `-lt`    | Numeric less than | `[ "$a" -lt "$b" ]`          | Numbers only                   |
| `-gt`    | Numeric greater   | `[ "$a" -gt "$b" ]`          | Numbers only                   |
| `-le`    | Numeric ≤         | `[ "$a" -le "$b" ]`          | Numbers only                   |
| `-ge`    | Numeric ≥         | `[ "$a" -ge "$b" ]`          | Numbers only                   |
| `=~`     | Regex match       | `[[ $str =~ regex ]]`        | `[[ ]]` only, Bash regex match |
| `-a`     | AND logical       | `[ cond1 -a cond2 ]`         | Inside `[ ]` only              |
| `-o`     | OR logical        | `[ cond1 -o cond2 ]`         | Inside `[ ]` only              |
| `&&`     | AND logical cmd   | `[[ cond1 ]] && [[ cond2 ]]` | Outside test brackets          |


---


