void main() {
  var p = Person('Kritthana','Sawankaloke', 20);
  var p2 = Person('Pornkanok','Hiran', 20);

  print(p.firstName);
  print(p2.firstName);
}

class Person{
  String? firstName;
  String? lastName;
  int? age;

  Person(this.firstName,this.lastName,this.age);
}