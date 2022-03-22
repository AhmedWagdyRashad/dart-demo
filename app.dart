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
  final arr = [1, 2, 3, 4];
  arr[0] = 0;
  const arr2 = [4, 5, 6, 7];
  // arr2[0] = 0; you can't change the const value or refrence
  print(arr);
  print(arr2);
  bool isGood = false;
  print(isGood);
  var list = [1, 2, 3, for (var i in arr2) i];
  print(list);
}
