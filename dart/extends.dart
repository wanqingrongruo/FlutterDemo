void main(List<String> args) {}

class Animal {
  int age;

  Animal(this.age);
}

class Person extends Animal {
  String name;

  Person(this.name, int age) : super(age);
}

// 抽象类不能实例化
abstract class Shape {
  int getArea();
  String getInfo() {
    return "kkk";
  }

  // // 通过工厂方法给抽象类实例化, 返回一个子类
  // factory Shape() {
  //   return Rectangle();
  // }
}

// 继承自抽象类, 必须实现抽象类的抽象方法
class Rectangle extends Shape {
  @override
  int getArea() {
    return 10;
  }

  @override
  String getInfo() {
    return "rectangle";
  }
}
