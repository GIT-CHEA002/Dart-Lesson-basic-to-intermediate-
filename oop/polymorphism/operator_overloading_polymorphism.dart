class Vector {
  final int x, y;
  Vector(this.x, this.y);
  // overriding to + methods
  Vector operator +(Vector other) => Vector(x + other.x, y + other.y);
  // overriding to - methods
  Vector operator -(Vector other) => Vector(x - other.x, y - other.y);

  @override
  String toString() => '($x,$y)';
}

void main() {
  print(Vector(1, 2) + Vector(3, 4));
  print(Vector(1, 2) - Vector(3, 4));
}
