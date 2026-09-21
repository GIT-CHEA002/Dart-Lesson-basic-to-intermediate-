void main() {
  /**
   * Arrow Function : is the shorthand of Anonymous function . 
   * It usually use in the inline code (single line ) like map and list 
   * It can use only with expression only in most case
   */
  int Square(int num) => num * num;
  print("Square of 10 is : ${Square(10)}");
  String Greeting(String? name) => "Hello $name";
  print(Greeting("Sokchea smos"));

  List<int> numbers = [10, 20, 30, 40, 50];
  print(numbers);
  numbers = numbers.map((element) => element * 2).toList();
  print(numbers);
  // print element less than 50 only
  print(numbers.where((element) => element < 50));
}
