void main(List<String> args) {
  // 指明类型
  String name = "roni";

// 类型推导
// 变量
  var age = 30;

  // 运行时,第一次获取确定值
  final height = 171;
  // 编译器就要确定值, 只能赋值常量
  const sex = "man";

  const man = const Man("roni");
  const man2 = const Man("roni");
  final person = Person("roni2");
  print(identical(man, man2));
}

class Person {
  late String name;
  Person(String name) {
    this.name = name;
  }
}

class Man {
  final String name;
  const Man(this.name);
}
