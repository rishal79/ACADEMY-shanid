# 🐍 Python Basic Syntax Cheatsheet

A beginner-friendly guide to Python syntax, built-in functions, data structures, and OOP — with GitHub-compatible formatting.

---

## 📝 1. Comments

# This is a single-line comment

"""
This is a
multi-line comment
"""


---

📥 2. Input and 📤 Output

name = input("Enter your name: ")  # Input
print("Hello,", name)              # Output


---

🔢 3. Variables and Data Types

x = 10              # Integer
pi = 3.14           # Float
name = "Alice"      # String
is_active = True    # Boolean


---

🔀 4. Conditionals

age = 20

if age >= 18:
    print("Adult")
elif age > 12:
    print("Teen")
else:
    print("Child")


---

🔁 5. Loops

While Loop

count = 0
while count < 5:
    print(count)
    count += 1

For Loop

for i in range(5):
    print(i)

Loop Control

for i in range(5):
    if i == 3:
        break
    if i == 1:
        continue
    print(i)


---

📦 6. Data Structures + Built-in Methods

🔹 List

fruits = ["apple", "banana", "cherry"]

fruits.append("orange")
fruits.insert(1, "kiwi")
fruits.remove("banana")
popped = fruits.pop()
index = fruits.index("apple")
count = fruits.count("apple")
fruits.sort()
fruits.reverse()
copy_fruits = fruits.copy()
fruits.clear()

🔹 Tuple

numbers = (1, 2, 3, 2, 4)

count = numbers.count(2)
index = numbers.index(3)

> ✅ Tuples are immutable



🔹 Set

colors = {"red", "green", "blue"}

colors.add("yellow")
colors.update(["black", "white"])
colors.remove("green")
colors.discard("pink")
item = colors.pop()
colors.clear()

a = {1, 2, 3}
b = {3, 4, 5}
a.union(b)
a.intersection(b)
a.difference(b)
a.symmetric_difference(b)

🔹 Dictionary

student = {"name": "Alice", "age": 20, "grade": "A"}

value = student.get("name")
student["age"] = 21
student["course"] = "Math"
removed = student.pop("grade")
student.popitem()
keys = student.keys()
values = student.values()
items = student.items()
student.update({"age": 22, "city": "NY"})
student.clear()


---

📚 7. Functions

def greet(name):
    return f"Hello, {name}"

print(greet("Shanid"))


---

🧮 8. Math Operators

a = 5
b = 2

print(a + b)   # Addition
print(a - b)   # Subtraction
print(a * b)   # Multiplication
print(a / b)   # Division
print(a % b)   # Modulo
print(a ** b)  # Power
print(a // b)  # Floor Division


---

📋 9. List Comprehension

squares = [x**2 for x in range(5)]
print(squares)


---

🧰 10. Modules

import math
print(math.sqrt(16))

from datetime import datetime
print(datetime.now())


---

❗ 11. Exception Handling

try:
    x = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero!")
finally:
    print("Done")


---

👨‍💻 12. Object-Oriented Programming (OOP)

🔸 Class and Object

class Person:
    def __init__(self, name):
        self.name = name

    def greet(self):
        print("Hello,", self.name)

p = Person("Alice")
p.greet()

🔸 Inheritance

class Animal:
    def speak(self):
        print("Animal speaks")

class Dog(Animal):
    def speak(self):
        print("Dog barks")

d = Dog()
d.speak()

🔸 Encapsulation

class Car:
    def __init__(self):
        self.__speed = 0   # Private variable

    def set_speed(self, speed):
        self.__speed = speed

    def get_speed(self):
        return self.__speed

c = Car()
c.set_speed(60)
print(c.get_speed())

🔸 Polymorphism

class Bird:
    def sound(self):
        print("Some sound")

class Sparrow(Bird):
    def sound(self):
        print("Chirp")

class Parrot(Bird):
    def sound(self):
        print("Squawk")

for bird in (Sparrow(), Parrot()):
    bird.sound()


---
