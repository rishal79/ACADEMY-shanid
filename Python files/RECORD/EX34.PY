class BankAccount:
    def __init__(self, account_number, name, account_type, balance=0.0):
        self.account_number = account_number
        self.name = name
        self.account_type = account_type
        self.balance = balance

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print(f"₹{amount} deposited. New balance: ₹{self.balance}")
        else:
            print("Invalid deposit amount.")

    def withdraw(self, amount):
        if 0 < amount <= self.balance:
            self.balance -= amount
            print(f"₹{amount} withdrawn. Remaining balance: ₹{self.balance}")
        else:
            print("Invalid or insufficient funds.")

    def display_account_details(self):
        print(f"Account Number: {self.account_number}")
        print(f"Account Holder: {self.name}")
        print(f"Account Type: {self.account_type}")
        print(f"Balance: ₹{self.balance}")


account = BankAccount("123456789", "John Doe", "Savings", 5000)
account.display_account_details()
account.deposit(2000)
account.withdraw(1500)
account.withdraw(7000)


# Step 1: Start

# Define the BankAccount class
# Step 2: Create the class with attributes for account number, name, account type, and balance
# Step 3: Define methods to deposit money, withdraw money, and display account details

# Handle deposit
# Step 4: If a valid deposit amount is given, add it to the balance and print the new balance
# Step 5: If the deposit amount is invalid, print an error message

# Handle withdrawal
# Step 6: If the withdrawal amount is valid and less than or equal to the balance, subtract it from the balance and print the new balance
# Step 7: If the withdrawal is invalid or exceeds the balance, print an error message

# Display account details
# Step 8: Print the account details including account number, name, account type, and balance

# Create a bank account with some details
# Step 9: Call the methods to deposit, withdraw, and display details

# Step 10: Stop
