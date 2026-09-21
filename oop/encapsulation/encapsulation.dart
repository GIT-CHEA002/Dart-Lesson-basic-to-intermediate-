import 'dart:ffi';

/**
 * we all know the rule of encapsulation : field must be private 
 * in encapsulation rule , we should hide data from the user 
 * Dart : private accessible rule
 * 1. In the same file the private or anything within the class can access to all place in main function 
 * 2. class in dart is consider as a file, one class mean one files 
 * 3. To encapsulate the data we must move the class to it own file and import them back : import 'class-name.dart' 
 */
class Bank {
  double _balance = 0;
  void deposit(double amount) {
    this._balance += amount;
  }

  void withdraw(double amount) {
    if (this._balance < amount) {
      print("Not enough money to withdraw");
    } else {
      print('You withdraw $amount from you account');
      this._balance -= amount;
    }
  }

  void showBalance() {
    print("Current blance : ${this._balance}");
  }
}

void main() {
  Bank b = Bank();
  b.deposit(10000);
  b.showBalance();
  b.withdraw(1000);
  b.showBalance();
}
