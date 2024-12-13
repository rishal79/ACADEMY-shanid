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
