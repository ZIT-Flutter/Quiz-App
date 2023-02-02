void main() {
  
  BankAccount account1 = BankAccount(accountNumber: 125632, balance: 10000, ownerName: 'Rafiq Uddin');
  
//   print(account1.ownerName);
  
  account1.deposit(15000);
  
  account1.withdraw(7000);
  

  
}





class Rectangle {
  double height;
  double width;
  
  Rectangle({required this.height, required this.width});
  
  getArea(){
    double area = height * width;
    print('Area of Rectangle is: $area');
    
  }
}



class BankAccount{
  int accountNumber;
  String ownerName;
  double balance;
  
  
  BankAccount({required this.accountNumber, required this.balance, required this.ownerName });
  
  
  
  deposit(double amount){
    
    balance = balance + amount;
    
    
    print('Balance of $accountNumber after deposit: $balance');
    
  }
  
  
  withdraw(double amount){
    balance -= amount;
    
    print('Balance of $accountNumber after widthdraw: $balance');
    
    
  }
}





