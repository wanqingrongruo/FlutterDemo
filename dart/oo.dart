void main(List<String> args) {
  var p = Person("roni", 18);
  var p1 = Person.height("roin2", 30, 1.72);

  Object o = "roni"; // 基类
  dynamic d = "roni"; // any

  print(p);
  print(p1);

  var a = Animal("roni");
  var b = Animal("rr", age: 20);

  print(a);
  print(b);
}

class Person {
  late String name;
  late int age;
  double height = 0;
  // Person(this.name, this.age);
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // 命名构造函数
  Person.height(this.name, this.age, this.height);

  @override
  String toString() {
    return "name: $name, age: $age, height: $height";
  }
}

class Animal {
  final String name;
  final int age;

  // 初始化列表
  Animal(this.name, {int age = 10}) : this.age = age {}

  Animal._interal(this.name, this.age);

  @override
  String toString() {
    return "name: $name, age: $age";
  }
}

class Cat {
  final String name;
  final int age;

  // 初始化函数重定向
  Cat(String name) : this._interal(name, 10);

  Cat._interal(this.name, this.age);

  @override
  String toString() {
    return "name: $name, age: $age";
  }
}
