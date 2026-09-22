import 'dart:math';

/**
 * abstract behavior : 
 * 1. can contain abstract methods and concrete methods
 * 2. can contain fields or property 
 * 3. can be extended (override all abstract methods)
 * 4. can be implement (override all abstract methods)
 * 5. can not be instained directly 
 * 6. most use in polymorphism concept
 */

abstract class Shape {
  // fields
  double? _area;
  void draw(); // abstract must be implement in the sub class
  // concrete methods
  double? get Area => this._area;
  set area(double area) => this._area = area;
  void printArea() {
    print("The area of the shape is : ${this._area}");
  }
}

class Circle extends Shape {
  double? _radius;
  double? get raduis => this._radius;
  set raduis(double raduis) {
    this._radius = raduis;
    super.area = pi * pow(this._radius!, 2);
  }

  @override
  void draw() {
    // implement the abstract methods of the abstrat class (Shape)
    // TODO: implement draw
    print("Drawing a circle with raduis = ${this._radius}");
    print("The area of the shape = ${super._area?.toStringAsFixed(2)}");
  }
}

void main() {
  // Shape shape = Shape();  : error because the abstract class can not be instained
  Circle circle = Circle();
  circle.raduis = 10;
  circle.draw();
}
