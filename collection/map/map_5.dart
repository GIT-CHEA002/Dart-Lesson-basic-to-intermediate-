// Part 5 : updating and properties
void main() {
  var number = {1: 100, 2: 200, 3: 300};
  print(number);

  number.update(1, (value) => 500);
  print(number);

  number.updateAll((key, value) => value * 10);
  print(number);

  // properties

  print(number.isEmpty);
  print(number.isNotEmpty);
  print(number.runtimeType);
}
