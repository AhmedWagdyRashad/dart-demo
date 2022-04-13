class Point {
  late num x, y;
  // initializer list =>> sets instance variables before the constructors body runs
  Point(Map point)
      : this.x = point['x'],
        this.y = point['y'] {
    //Constructor Body
  }
  //Redirect constructor
  Point.fromXAxis(int x) : this({'x': x, 'y': 0});
  info() {
    print("x: ${this.x}, y: ${this.y}");
  }
}

class a {}

extension rint on Point {
  void pp() {
    print("extension1");
  }
}

extension rint1 on Point {
  void pp() {
    print("extension2");
  }
}
