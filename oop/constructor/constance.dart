void main() {
  Point p = new Point(10, 20);
  p.Display();
}

// Creates an object that can be a **compile-time constant**.
// For immutable objects whose values don't change. (reuse the like the interface but can't immplement)
class Point {
  // You must use final keyword to immutable the value change of the fields
  final int x;
  final int y;
  const Point(this.x, this.y);
  void Display() {
    print("x : $x , y : $y");
  }
}
