void main() {
  
//   Car car1 = Car(4, 100.0, 'Blue');
  
//   Car car2 = Car(6, 150, 'Black');
  
  Car car1 = Car(speed: 132.5, wheel: 4);
  
  car1.color = 'Green';
  
  

  print(car1.color);
  

}




class Car{
  final int wheel;
  final double speed;
  String? color;

  Car({required this.wheel, required this.speed, this.color});
}






