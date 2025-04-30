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
