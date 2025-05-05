Q) Write a program has class Publisher, Book, Literature and Fiction. Read the information and print the details of books from either the category, using inheritance. 


code:

class Publisher {
    String publisher;

    Publisher(String publisher) {
        this.publisher = publisher;
    }
}

class Book extends Publisher {
    String title;

    Book(String publisher, String title) {
        super(publisher);
        this.title = title;
    }
}

class Literature extends Book {
    Literature(String publisher, String title) {
        super(publisher, title);
    }

    void display() {
        System.out.println("Literature - Title: " + title + ", Publisher: " + publisher);
    }
}

class Fiction extends Book {
    Fiction(String publisher, String title) {
        super(publisher, title);
    }

    void display() {
        System.out.println("Fiction - Title: " + title + ", Publisher: " + publisher);
    }

    public static void main(String[] args) {
        Literature lit = new Literature("Penguin", "Hamlet");
        Fiction fic = new Fiction("HarperCollins", "Harry Potter");

        lit.display();
        fic.display();
    }
}

Output:

Literature - Title: Hamlet, Publisher: Penguin
Fiction - Title: Harry Potter, Publisher: HarperCollins


Algorithm:

Step 1: Create a Person class with attributes: name, gender, address, and age.
Step 2: Create an Employee class that extends Person and adds: empId, companyName, qualification, and salary.
Step 3: Create a Teacher class that extends Employee and adds: subject, department, and teacherId.
Step 4: Define constructors in each class to initialize their respective variables.
Step 5: Implement the display() method in the Teacher class to print all details.
Step 6: In the main method, create an array of Teacher objects with sample data and loop through them to call the display() method.
Step 7: End.