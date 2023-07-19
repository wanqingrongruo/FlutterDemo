void main(List<String> args) {
  test(bar);

  test(() {
    print('我是 1');
  });

  test(() => print("nnnnn"));

  test2((num1, num2) => num1 + num2);

  test2((num1, num2) {
    return num1 + num2;
  });
}

void test(Function foo) {
  foo();
}

void bar() {
  print("bar");
}

typedef Add = int Function(int num1, int num2);

void test2(Add add) {
  var s = add(10, 20);
  print(s);
}
