main() {
  print("hello world");
  int c = 5;
  print("c = " + c.toString()); //concationation
  String name = "ahmed";
  print("name = $name"); //interpolation
  var v;
  v = 4;
  v = "ahmed";
  c = 3;
  print("c = " + c.toString());
  var car = "car";
  print("$car");
  int age = -33;
  print(age.abs());
  Object ob = 3;
  dynamic dc = 3;
  print(dc);
  print(ob);
  final arr = [1, 2, 3];
  arr[0] = 0;
  const arr2 = [4, 5, 6, 7];
  // arr2[0] = 0; you can't change the const value or refrence
  print(arr);
  print(arr2);
  bool isGood = false;
  print(isGood);
  /* Dart 2.3 introduced 
     spread operator …, null-aware spread operator  
     collection if, collection for
 */
  var arrAll = [...arr, ...?arr2];
  print(arrAll);
  var list1 = [
    1,
    2,
    3,
    if (isGood) [8, 8] else [9, 10]
  ];
  print("list1 = $list1");
  print("list[3] = ${list1[3]}");
  print("list.length= ${list1.length}");
  list1.add(11);
  print("list.length= ${list1.length}");

// collection for
  var list = [1, 2, 3, for (var i in arr2) i + 5];
  print(list);
// set the collection 13-lec
  var courses = {'Android', 'IOS', 'Dart'};
  Set<String> courses1 = {'Android', 'I0s', 'Dart'};
}
