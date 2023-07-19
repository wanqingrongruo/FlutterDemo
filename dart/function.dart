void main(List<String> args) {
  print(sum(10, 20));
  sayHello("roni");
  sayHi("roni");
  sayHi("roni2", 22, 1.72);
  sayHi2("roni3", bold: true, age: 32);
}

int sum(int num1, int num2) {
  return num1 + num2;
}

void sayHello(String name) {
  print(name);
}

// dart 中没有函数重载
// 位置可选参数
// 可选参数可以有默认值
void sayHi(String name, [int age = 33, double? height]) {
  var result = name;
  result += ", age = $age";

  if (height != null) {
    result += ", height = $height";
  }
  print(result);
}

//命名可选参数
void sayHi2(String name, {bool? bold, required int age}) {
  var result = name;
  if (bold != null) {
    result += ", bold = $bold";
  }

  result += ", age = $age";

  print(result);
}
