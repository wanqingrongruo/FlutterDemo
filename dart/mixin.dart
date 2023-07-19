import 'dart:math';

// as 关键字给库起别名
// show: 执行要导入的内容
// hide: 隐藏某个内容, 其他的全部导入
import 'module.dart' as sumUtils show sum, mul;

void main(List<String> args) {}

// dart 单继承

mixin Walk {
  walk() {
    print("bll");
    sumUtils.sum(20, 20);
  }
}

mixin Eat {
  eat() {
    print("eat");
  }
}

class Animal {
  run() {
    print("run");
  }
}

class Runner {
  hi() {
    print("hi");
  }
}

class Person extends Animal with Walk, Eat implements Runner {
  @override
  run() {
    print("perrr run");
  }

  @override
  eat() {
    print("person eat");
  }

  @override
  hi() {
    print("my hi");
  }
}
