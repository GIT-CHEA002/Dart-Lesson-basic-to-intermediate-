void main() {
  // Part 2 : Element access and math operations
  var set1 = {1, 2, 3, 4, 5, 6, 7, 8, 111};
  var set2 = {1, 3, 5, 2, 6, 9};
  print(set1);
  print(set2);

  // print all element
  print("Element : ${set1.elementAt(1)}");

  // intersect
  var inter = set1.intersection(set2);
  print(inter);

  var uni = set1.union(set2); //
  print(uni);

  var diff = set1.difference(set2); // substract
  print(diff);

  var symDiff = (set1.union(
    set2,
  )).difference(set2.intersection(set1)); // symetric differrent of
  print(symDiff);
}
