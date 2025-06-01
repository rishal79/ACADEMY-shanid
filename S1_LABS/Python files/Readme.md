# Python Cheatsheet for Beginners 🐍

A quick reference guide for Python fundamentals with examples.

## 1. 💬 Comments
```python
# This is a single-line comment

"""
This is a
multi-line comment
"""
```

## 2. 📥📤 Input and Output
```python
# Output
print("Hello, World!")  # Hello, World!

# Input
name = input("Enter your name: ")
print(f"Hello, {name}!")
```

## 3. 📊 Variables and Data Types
```python
# Variables
x = 10          # Integer
y = 3.14         # Float
name = "Alice"   # String
is_active = True # Boolean

# Type conversion
num_str = "10"
num_int = int(num_str)
```

## 4. 🤔 Conditionals
```python
# if-elif-else
age = 18

if age < 13:
    print("Child")
elif age < 18:
    print("Teen")
else:
    print("Adult")

# Ternary operator
status = "Adult" if age >= 18 else "Minor"
```

## 5. 🔄 Loops
```python
# While loop
count = 0
while count < 5:
    print(count)
    count += 1

# For loop
for i in range(5):  # 0 to 4
    print(i)

# Loop control
for num in range(10):
    if num == 3:
        continue    # Skip iteration
    if num == 8:
        break       # Exit loop
    print(num)
```

## 6. 🧺 Data Structures
### List (Mutable)
```python
fruits = ["apple", "banana", "cherry"]
fruits.append("orange")     # Add item
fruits.remove("banana")     # Remove item
fruits[0] = "pear"          # Modify item
```

### Tuple (Immutable)
```python
colors = ("red", "green", "blue")
# colors[0] = "yellow"  # Error! Can't modify
```

### Set (Unique elements)
```python
unique_nums = {1, 2, 3, 3}  # {1, 2, 3}
unique_nums.add(4)
unique_nums.remove(2)
```

### Dictionary (Key-Value pairs)
```python
person = {"name": "Alice", "age": 25}
person["age"] = 26          # Update value
person["city"] = "New York" # Add new key-value
del person["age"]           # Remove key
```

## 7. 📞 Functions
```python
# Function definition
def greet(name="World"):
    return f"Hello, {name}!"

# Function call
message = greet("Alice")
print(message)  # Hello, Alice!
```

## 8. ➗ Math Operators
```python
# Arithmetic
a = 10 + 5   # 15 (Addition)
b = 10 - 5   # 5 (Subtraction)
c = 10 * 5   # 50 (Multiplication)
d = 10 / 3   # 3.333... (Division)
e = 10 // 3  # 3 (Floor division)
f = 10 % 3   # 1 (Modulus)
g = 2 ** 3   # 8 (Exponentiation)

# Comparison
5 == 5   # True
5 != 3   # True
5 > 3    # True
5 <= 5   # True
```

## 9. 🎯 List Comprehension
```python
# Create a list of squares
squares = [x**2 for x in range(5)]  # [0, 1, 4, 9, 16]

# With condition
evens = [x for x in range(10) if x % 2 == 0]  # [0, 2, 4, 6, 8]
```

## 10. 📦 Modules
```python
import math
from datetime import date

# Using math module
print(math.sqrt(16))  # 4.0

# Using datetime
today = date.today()
print(today)  # YYYY-MM-DD
```

## 11. 🚨 Exception Handling
```python
try:
    result = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero!")
except Exception as e:
    print(f"An error occurred: {e}")
else:
    print("No errors!")
finally:
    print("This always runs")
```

## 12. 🧩 Object-Oriented Programming (OOP)
### Class and Object
```python
class Dog:
    # Constructor
    def __init__(self, name):
        self.name = name  # Instance variable
    
    # Method
    def bark(self):
        print(f"{self.name} says woof!")

# Create object
my_dog = Dog("Buddy")
my_dog.bark()  # Buddy says woof!
```

### Inheritance
```python
class Labrador(Dog):  # Inherits from Dog
    def swim(self):
        print(f"{self.name} is swimming!")

my_lab = Labrador("Max")
my_lab.bark()  # Inherited method
my_lab.swim()  # New method
```

### Encapsulation
```python
class BankAccount:
    def __init__(self):
        self.__balance = 0  # Private variable
    
    def deposit(self, amount):
        self.__balance += amount
    
    def get_balance(self):
        return self.__balance
```

### Polymorphism
```python
class Cat:
    def speak(self):
        print("Meow")

class Duck:
    def speak(self):
        print("Quack")

# Same method name, different behavior
animals = [Cat(), Duck()]
for animal in animals:
    animal.speak()
```

---
