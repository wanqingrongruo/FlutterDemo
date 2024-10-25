/**
 * 重学 dart 基础语法
 */
void main() {
  print('Hi, dart');

  var name = "roni";
  String sex = "male";
  int age = 30;

  print(name);
  print("sex: $sex, age: $age");

  // 常量
  const pi = 3.14159;

  // 运行时常量，定义时可以不赋值， 运行时再赋值， 但是只能赋值一次
  final String nickName;
  nickName = "bob";

  bool isShowing = true;

  print("pi: $pi, nickName: $nickName, isShowing: $isShowing");

  String str = "123.1";
  int num;
  try {
    num = int.parse(str);
  } catch (e) {
    num = 0;
  }

  print(num);

  var str01 = num.toString();
  print(str01);

  // 固定长度
  List<int> names = List.filled(2, 1);
  print(names.length);

  var list = ["1", "2", "3"];
  list.add("4");
  print(list);

  list.length = 3;
  print(list);

  print(list.join("-"));

  var s = Set();
  s.add("1");
  s.add("2");
  s.add("1");
  print(s);

  print(s.toList());
  s.addAll(list);
  print(s);

  var map = {"name": "roni", "age": 30};

  print(map);
  print(map.keys.toList());

  map["name"] = "tt";
  print(map);

  list.forEach((ele) => print(ele));
  for (var item in s) {
    print(item);
  }

  for (var entry in map.entries) {
    print("key: ${entry.key}, value: ${entry.value}");
  }

  var newList = list.map((value) {
    return value + "o";
  });
  print(newList);

  newList = list.where((value) {
    return value == "2";
  });
  print(newList);

  // 一个元素满足就 true
  var isAny = list.any((value) {
    return value == "1";
  });

  // 每个元素都要满足才为 true
  var isEvery = list.every((value) {
    return value == "1";
  });

  print("isAny: $isAny");
  print("isEvery: $isEvery");

  print(printUserInfo("roni", 21));
  print(printUserInfo("roni"));
  print(printUserInfo("roni", 22, "kk"));
  print(printUserInfo2("roni", age: 22, sex: "kk"));

  var o1 = Object();
  var o2 = Object();
  // identical(x,y)， 判断两个对象是否使用同一个内存空间
  print(identical(o1, o2)); // false
  print(identical(o1, o1)); // true

// 实例化常量构造函数， 共享存储空间. const 在多个地方创建相同的对象时，内存中只保留一个对象
  var s1 = const Object();
  var s2 = const Object();
  print(identical(s1, s2)); // true

// 实例化常量构造函数时， 多个地方创建这个对象，如果传入的值相同， 只会保存一条
// 如果实例化时不加 const 修饰， 即使调用的是常量构造函数，实例化的对象也不是常量实例
  var c1 = Container(width: 100, height: 100);
  var c2 = Container(width: 100, height: 100);
  print(identical(c1, c2)); // fals
  var c3 = const Container(width: 100, height: 100);
  var c4 = const Container(width: 100, height: 100);
  print(identical(c3, c4)); // true


}

// 可选参数， 默认参数
String printUserInfo(String userName, [int? age, String sex = "male"]) {
  if (age != null) {
    return "name: $userName, age: $age, sex: $sex";
  }

  return "name: $userName, sex: $sex";
}

// 命名参数
String printUserInfo2(String userName, {int? age, String sex = "male"}) {
  if (age != null) {
    return "name: $userName, age: $age, sex: $sex";
  }

  return "name: $userName, sex: $sex";
}

class Person {
  // 默认构造函数
  Person(this.name, this.age);

  // 命名构造函数， 可以有多个
  Person.roni(this.name, this.age) {
    print("我是命名构造函数");
  }

  String name;
  int age;

  void getInfo() {
    print("name: $name, age: $age");
  }
}


// extends,  with,  implements

// 常量构造函数
// 属性必须使用 final 修饰
// 实例化常量构造函数时， 多个地方创建这个对象，如果传入的值相同， 只会保存一条
// 如果实例化时不加 const 修饰， 即使调用的是常量构造函数，实例化的对象也不是常量实例
// flutter 中 const 修饰不仅仅是节省组件构建时的内存开销， flutter在需要重新构建组件，这个组件是不应该改变的， 重新构建没有任何意义，因此 flutter 不会重新构建 const 组件
class Container {
  final int width;
  final int height;

  const Container({ required this.width, required this.height });
}