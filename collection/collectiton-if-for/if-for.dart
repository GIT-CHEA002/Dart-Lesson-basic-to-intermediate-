/**
 * Dart has already neat way (shorthand) to builds list, set, and map   inline using if and for loop 
 * directly inside the collections. 
 * 
 */
void main() {
  // create a list of number with condition using shorthand
  var number = [
    for (int i = 0; i <= 20; i++)
      if (i % 2 == 0) i,
  ];
  print(number);

  // create a square list from list of event numbers
  var squareList = [for (int i in number) i * i];
  print(squareList);

  // create square list from odd number
  var sqareList2 = [
    for (int i = 0; i < 20; i++)
      if (i % 2 == 1) i * i,
  ];
  print(sqareList2);

  // create matrix list (2d list)
  var matrix = [
    for (int i = 0; i <= 4; i++)
      for (int j = 1; j <= 4; j++) [i, j],
  ];
  print(matrix);
}
