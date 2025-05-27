# Simple Java Syntax Guide with Code Examples

---

## Table of Contents
1. [Inheritance (`extends`)](#1-inheritance-extends)
2. [Interfaces (`implements`)](#2-interfaces-implements)
3. [Method Overriding](#3-method-overriding)
4. [Abstract Classes](#4-abstract-classes)
5. [Constructors](#5-constructors)
6. [Method Overloading](#6-method-overloading)
7. [Packages and Import](#7-packages-and-import)
8. [Inner Classes](#8-inner-classes)
9. [Static Keyword](#9-static-keyword)
10. [Array of Objects](#10-array-of-objects)
11. [final Keyword](#11-final-keyword)
12. [this Keyword](#12-this-keyword)
13. [super Keyword](#13-super-keyword)
14. [Exception Handling (try-catch)](#14-exception-handling-try-catch)
15. [Summary Table](#15-summary-table)

---

## 1. Inheritance (`extends`)

```java
class Animal {
    void eat() {
        System.out.println("Eating...");
    }
}

class Dog extends Animal {
    void bark() {
        System.out.println("Barking...");
    }
}

// Usage
Dog d = new Dog();
d.eat();  // inherited method
d.bark(); // own method
````

---

## 2. Interfaces (`implements`)

```java
interface Animal {
    void eat();
}

class Dog implements Animal {
    public void eat() {
        System.out.println("Dog eats food");
    }
}

// Usage
Animal dog = new Dog();
dog.eat();
```

---

## 3. Method Overriding

```java
class Animal {
    void sound() {
        System.out.println("Animal makes sound");
    }
}

class Dog extends Animal {
    @Override
    void sound() {
        System.out.println("Dog barks");
    }
}

// Usage
Animal a = new Dog();
a.sound(); // calls overridden method in Dog
```

---

## 4. Abstract Classes

```java
abstract class Animal {
    abstract void sound();
}

class Dog extends Animal {
    void sound() {
        System.out.println("Dog barks");
    }
}

// Usage
Animal a = new Dog();
a.sound();
```

---

## 5. Constructors

```java
class Person {
    String name;

    Person(String name) {
        this.name = name;
    }
}

// Usage
Person p = new Person("Alice");
System.out.println(p.name);
```

---

## 6. Method Overloading

```java
class Calculator {
    int add(int a, int b) { return a + b; }
    int add(int a, int b, int c) { return a + b + c; }
}

// Usage
Calculator c = new Calculator();
c.add(5, 10);    // 15
c.add(1, 2, 3);  // 6
```

---

## 7. Packages and Import

```java
// In file utils/Helper.java
package utils;

public class Helper {
    public static void greet() {
        System.out.println("Hello!");
    }
}

// Usage in another file
import utils.Helper;

Helper.greet();
```

---

## 8. Inner Classes

```java
class Outer {
    class Inner {
        void msg() {
            System.out.println("Hello from Inner class");
        }
    }
}

// Usage
Outer outer = new Outer();
Outer.Inner inner = outer.new Inner();
inner.msg();
```

---

## 9. Static Keyword

```java
class Counter {
    static int count = 0;

    Counter() {
        count++;
    }
}

// Usage
new Counter();
new Counter();
System.out.println(Counter.count); // Output: 2
```

---

## 10. Array of Objects

### a) Array of Objects with values in code

```java
Student[] students = {
    new Student("Alice", 20),
    new Student("Bob", 22)
};

for (Student s : students) s.display();
```

### b) Array of Objects with user input (syntax only)

```java
Scanner sc = new Scanner(System.in);
int n = sc.nextInt();
Student[] students = new Student[n];
for (int i = 0; i < n; i++) {
    String name = sc.nextLine();
    int age = sc.nextInt();
    students[i] = new Student(name, age);
}
```

---

## 11. final Keyword

```java
final class Constants {
    final double PI = 3.14;
}

// Usage
Constants c = new Constants();
System.out.println(c.PI);  // cannot change PI because it's final
```

---

## 12. this Keyword

```java
class Person {
    String name;
    Person(String name) {
        this.name = name;  // refers to instance variable
    }
}
```

---

## 13. super Keyword

```java
class Animal {
    void sound() {
        System.out.println("Animal sound");
    }
}

class Dog extends Animal {
    void sound() {
        super.sound();          // call parent method
        System.out.println("Dog barks");
    }
}
```

---

## 14. Exception Handling (try-catch)

```java
try {
    int result = 10 / 0;
} catch (ArithmeticException e) {
    System.out.println("Cannot divide by zero");
}
```

---

## 15. Summary Table

```

| Topic              | Syntax Example                                        | Description                            |
| ------------------ | ----------------------------------------------------- | -------------------------------------- |
| Inheritance        | `class Dog extends Animal {}`                         | Class inherits another class           |
| Interface          | `class Dog implements Animal {}`                      | Implements interface methods           |
| Method Overriding  | `@Override void sound() {}`                           | Subclass replaces superclass method    |
| Abstract Class     | `abstract class Animal { abstract void sound(); }`    | Abstract classes have abstract methods |
| Constructor        | `Person(String name) { this.name = name; }`           | Initialize object variables            |
| Method Overloading | `int add(int a, int b), int add(int a, int b, int c)` | Same method name, different params     |
| Packages           | `package utils; + import utils.Helper;`               | Organize classes and import            |
| Inner Class        | `Outer.Inner inner = outer.new Inner();`              | Class inside another class             |
| Static             | `static int count;`                                   | Class-level shared variables/methods   |
| Array of Objects   | `Student[] arr = {...} or with input loop`            | Store multiple objects                 |
| final              | `final int x = 10; final class C {}`                  | Constant variables/non-inheritable     |
| this               | `this.name = name;`                                   | Refers to current object               |
| super              | `super.method();`                                     | Calls parent class method              |
| Exception Handling | `try { } catch (Exception e) {}`                      | Handle runtime errors                  |



```
