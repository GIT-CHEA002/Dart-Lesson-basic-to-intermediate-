// Part 4 : Tranformation and Filtering
void main() {
  var set1 = {1, 2, 3, 6, 7, 82, 90, 5};

  // map the element (change)
  var doubleSet1 = set1.map((ele) => ele * 2);
  print(set1);
  print(doubleSet1);

  // filter the element
  var filtered = set1.where((ele) => ele > 5).toSet();
  print(filtered);
}
