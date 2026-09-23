// Part 5 : Transformations and Filtering

void main() {
  var newList = [
    10,
    3,
    30,
    1,
    20,
    8,
    10,
    5,
    30,
    9,
    20,
    4,
    10,
    2,
    30,
    7,
    20,
    6,
    10,
    20,
  ];                                                                                      
  print(newList);

  var newList2 = newList.map((ele) => ele * 2).toList();

  print(newList2);

  var copyList = newList2.where((ele) => ele > 20).toList();
  print(copyList);

  newList2.shuffle();
  print(newList2);
}
