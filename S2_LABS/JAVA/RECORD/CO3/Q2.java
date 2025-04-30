class Employee {
    int empId;
    String name;
    double salary;
    String address;

    Employee(int empId, String name, double salary, String address) {
        this.empId = empId;
        this.name = name;
        this.salary = salary;
        this.address = address;
    }
}

class Teacher extends Employee {
    String department;
    String subject;

    Teacher(int empId, String name, double salary, String address, String department, String subject) {
        super(empId, name, salary, address);
        this.department = department;
        this.subject = subject;
    }

    void display() {
        System.out.println("ID: " + empId + ", Name: " + name + ", Salary: " + salary + ", Address: " + address + ", Department: " + department + ", Subject: " + subject);
    }

    public static void main(String[] args) {
        Teacher[] teachers = {
            new Teacher(1, "Alice", 40000, "Kochi", "CS", "Java"),
            new Teacher(2, "Bob", 45000, "TVM", "IT", "Python")
        };

        for (Teacher t : teachers) {
            t.display();
        }
    }
}

Output:










Algorithm:
Step 1: Create a class Employee with variables: empId, name, salary, and address.
Step 2: Create a constructor in Employee to initialize all its variables.
Step 3: Create a subclass Teacher that extends Employee.
Step 4: Add extra variables in Teacher: department and subject.
Step 5: Create a constructor in Teacher to initialize both employee and teacher details using super().
Step 6: Write a display() method in Teacher to print all details.
Step 7: In the main method, create an array of Teacher objects with sample data.
Step 8: Use a loop to call the display() method for each teacher.
Step 9: End.