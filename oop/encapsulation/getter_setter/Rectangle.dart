class Rectangle {
  double? _width = 0;
  double? _height = 0;
  //
  double get Width => this._width ?? 0;
  double get Height => this._height ?? 0;

  set Width(double width) => this._width = width;
  set Height(double height) => this._height = height;

  double Area() => (this._width ?? 0) * (this._height ?? 0);
}
