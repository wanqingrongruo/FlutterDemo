void main(List<String> args) {
  // list
  var names = ["an", "ab", "ca", "ab"];

  // set
  var movies = ("kkk", "lll");

  // map
  var info = {"name": "roni", "age": 18};

  print(names);
  print(movies);
  print(info);

  // 去重
  names = Set<String>.from(names).toList();

  print(names);
}
