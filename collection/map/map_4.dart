// Part 4 : Iteration
void main() {
  var number = {7: 700, 8: 800, 9: 900, 10: 1000};

  print("Access element using foreach");
  number.forEach((key, value) => print("$key :  $value"));

  print("Access element using for in");
  for (var element in number.entries) {
    print("${element.key} : ${element.value}");
  }
}
