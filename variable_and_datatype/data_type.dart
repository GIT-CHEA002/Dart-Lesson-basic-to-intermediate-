void main() {
  print("Data type in dart ");
  /**
   * int    : for integer numbber 
   * float  : for floating point number
   * double : for floating point number (but has big range)
   * String : store string value 
   * bool   : store bolean value as true and false
   * List<type> : store value as list and can access using the indexer
   * Set<type>  : unordered collection 
   * Map<String, type> : store value  as key value pair 
   * dynamic : dynamic type (can change type at any run time)
   * Object : the base (parent) object of all object in the dart programming language
   * const : define constance value (can't change after assign value )
   * final : define a final value (can be assign only once when create or after create)
   * var : first assigned as null after declare and not even assigned to it 
   */
  int number = 10;
  print("$number is : ${number.runtimeType}");
  double number2 = 12.2;
  print(("$number2 is : ${number2.runtimeType}"));
  String? userName = "sokchea";
  print("$userName is : ${userName.runtimeType}");
  bool isLogin = true;
  print("$isLogin is : ${isLogin.runtimeType}");
  List<int> series_number = [20, 30, 40, 50, 60];
  print("$series_number is ${series_number.runtimeType}");
  Set<int> set_series = {10, 30, 40};
  print("$set_series is ${series_number.runtimeType}");
  Map<String, int> pair = {"age": 12, "height": 170};
  print("$pair is  ${pair.runtimeType}");
  dynamic value = 10;
  print("$value is ${value.runtimeType}");
  value = "sokchea";
  print("$value is ${value.runtimeType}");
  // work like map object :
  Object object = {"Name": "Sokchea", "Age": 20};
  print("$object is ${object.runtimeType}");
  const email = "sokchea317@gmail.com";
  print("${email} is ${email.runtimeType}");
  final int age = 20;
  print("${age} is ${age.runtimeType}");
  // dynamic type similar to dynamic type
  var variable = 13;
  print("${variable} is ${variable.runtimeType}");
  var variable2 = "sokchea";
  print("${variable2} is ${variable2.runtimeType}");
}
