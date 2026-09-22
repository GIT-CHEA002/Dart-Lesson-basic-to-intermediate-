class Rectangle {
  double? _width = 0;
  double? _height = 0;
  //
  double get width => this._width ?? 0;
  double get height => this._height ?? 0;

  set width(double width) => this._width = width;
  set height(double height) => this._height = height;

  double Area() => (this._width ?? 0) * (this._height ?? 0);
}
