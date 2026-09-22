abstract class Shape {
  void draw();
  double calculateArea();
}

// we notice interface cuase it use implement keywords

class Rectangle implements Shape {
  double? _width;
  double? _height;
  Rectangle(this._width, this._height);
  @override
  void draw() {
    // TODO: implement draw
    print("Drawing the shape as rectangle");
  }

  @override
  double calculateArea() {
    // TODO: implement calculateArea
    return (this._width ?? 0) * (this._height ?? 0);
  }
}
void main() {
  Shape rectangle = new Rectangle(10, 20);
  rectangle.draw();
  print(rectangle.calculateArea());
}
