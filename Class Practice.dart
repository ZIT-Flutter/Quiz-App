void main() {
  
  Car myCar = Car();
  
  myCar.company = 'Toyota';
  myCar.model = 'Camry';
  myCar.year = 2023;
  
  
//   myCar.startEngine();
  
  
  
  Employee employee1 = Employee('Saiful', 'Islam', 50000);

  
  employee1.getFullName();
  
  employee1.raiseSalary(10);
  
  print(employee1.salary);
  
    
  
 Employee employee2 = Employee('Rafiqul', 'Alam', 20000);
  
  employee2.getFullName();
  
  employee2.raiseSalary(20);
  
  print(employee2.salary);
  
  
  
    

}



class Car{
  String? company;
  String? model;
  int? year;
  
  
  void startEngine(){
    
    print('Engine started');
    
  }
}


class Employee {
  String firstName;
  String lastName;
  double salary;
  
  
  Employee(this.firstName, this.lastName, this.salary);
  
  
  void getFullName(){
    print('$firstName $lastName');
  }
  
  
  void raiseSalary(double parcent){
    salary = salary + (salary * parcent)/100;
    
  }
  
   
}



// Create a Rectangle Class which will hava a method of returning Area

// Create a Class called 'Bank Account'

// ownerName;
// accountNumber;
// balance


// deposit()
// withdraw()



