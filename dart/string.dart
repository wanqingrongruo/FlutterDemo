void main(List<String> args) {
  var str1 = "rini";
  var str = 'ronizheng';
  var str3 = """
            lllll
            lllll
            """;

  // 表达式拼接
  var name = "roni";
  var age = 30;
  var height = 1.72;

  var msg1 = "My name is  ${name}, age is ${age}, height is ${height}";
  var msg2 = "name is ${name}, type is ${name.runtimeType}";
  var msg3 = "My name is $name, age is $age, height is $height";

  print(msg1);
  print(msg2);
  print(msg3);
}
