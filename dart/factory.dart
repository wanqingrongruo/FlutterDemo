void main(List<String> args) {
  var p1 = Person("roni", 17);
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  static final Map<String, Person> nameCache = {};

  factory Person.withName(String name) {
    if (nameCache.containsKey(name)) {
      return nameCache[name]!;
    }

    final p = Person(name, 19);
    nameCache[name] = p;
    return p;
  }
}
