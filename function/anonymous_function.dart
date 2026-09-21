void main() {
  /**
   * Anonymous function : are functions that has no name , no head , but get complete body
   */
  var sum = (int a, int b) {
    return a + b;
  };
  var greeting = (String? name) {
    return "Hello $name";
  };
  print(greeting("Sokchea Smos"));
  print("sum of 10 and 20 : ${sum(10, 20)}");
  bool Function(int?) isPositive = (int? num) {
    if (num == null) {
      return false;
    }
    return num > 0;
  };
  print("Is positive number : ${isPositive(10)}");
  print("Is positive number : ${isPositive(-10)}");
}
