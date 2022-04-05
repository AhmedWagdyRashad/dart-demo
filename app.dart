import 'Point.dart';

main() {
  /* print("hello world");
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

  ////////////////////////////////////////////////////////////
  var add2 = makeAdder(2); // add2 = (i) => 2 + i;
  var add4 = makeAdder(4); // add4 = (i) => 4 + i;
  print(add2(3));
  print(add4(5));
  var list = [1, 2, 3, 4];
  list.forEach((element) {
    print("item = ${element + 5}");
  });
  */
  ////////////////////////////////////////////////////////////
  /* var callBacks = [];
  for (var i = 0; i < 5; i++) {
    callBacks.add(() => print(i));
  }
  callBacks.forEach((e) =>
      e()); // every item in the list represent the function as ()=>print(i) , i =0,1,2,3,4*/

  // Student s = Student("ahmed", "Damietta");
  // s.info();
  // var p1 = Point({'x': 1, 'y': 2});
  // p1.info();
  // var p2 = Point.fromXAxis(4);
  // p2.info();
  var point = ImmutablePoint(1, 2);
  // point.x = 1;
  point.info();
  var teatcher = Teatcher("a", 5);
  teatcher.name = 'a';
}

// function will retrun expresion
Function makeAdder(num addBy) {
  return (i) => addBy + i;
}

// class Student {
//   String name;
//   int age;
//   Student() {
//     this.name = "";
//     this.age = 0;
//   }
//   Student(String name, int age) {
//     this.name = name;
//     this.age = age;
//   }
// }

class Student {
  var name;
  var address;
  //default constructor
  Student(String name, String address) {
    this.name = name;
    this.address = address;
  }
  // Student() {
  //   name = "";
  //   this.age = 0;
  // }

  Student.def(this.name, this.address) {
    print("new object");
  }
  // //named constructor
  Student.fromJson(List<String> json) {
    this.name = json[0].toString();
    this.address = json[1].toString();
  }
  info() {
    print("S = ${this.name}  ${this.address}");
  }
}

class Point1 extends Point {
  Point1(Map point) : super(point);
}

// Immutable objects will be created from this calss becouse it contains the const constructor
class ImmutablePoint {
  final num x, y;
  const ImmutablePoint(this.x, this.y);
  info() {
    print("x = ${this.x}  y =${this.y}");
  }
}

class Teatcher implements Point {
  late String _name;
  late int _age;
  Teatcher(this._name, this._age, this.x, this.y);
  String get name => _name;
  set name(String name) => this._name;
  int get age => _age;

  info() {
    print("name = ${this.name}  age =${this.age}");
  }

  @override
  num x;

  @override
  num y;
}
