void main() {
  // Part 2 : Add , Insert, Remove
  var emptyList = [];
  print("Orginal list : $emptyList");
  emptyList.add(10);
  print(emptyList);

  emptyList.addAll([10, 20, 30, 40]);
  print(emptyList);

  emptyList.insert(0, 10000);
  print(emptyList);

  emptyList.insertAll(1, [1, 2, 3, 4]);
  print(emptyList);

  emptyList.remove(10); // first matching value
  print(emptyList);

  emptyList.removeAt(0);
  print(emptyList);

  emptyList.removeLast();
  print(emptyList);

  emptyList.removeRange(5, 6);
  print(emptyList);
}
