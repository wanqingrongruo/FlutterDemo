void main(List<String> args) {
  var name = "roni";
  name ??= "why";

  var age = null;
  age ??= 18;

  print(name);
  print(age);

  // 级联运算, 链式调用
  var p = Person()
    ..name = "roni"
    ..eat()
    ..play();
}

class Person {
  String name = "roni";

  void eat() {
    print("eat");
  }

  void play() {
    print("play");
  }
}
