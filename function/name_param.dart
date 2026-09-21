void main() {
  print(Sum(a: 10, b: 20));
  Greeting("Chhun", lastname: "Sokchea");
  Greeting("Chhun");
}

// the name param act like default and optional param , but you need to specified the name
// when you parsing the argument to its function
int Sum({int a = 0, int b = 0}) {
  return a + b;
}

void Greeting(String firstname, {String? lastname}) {
  if (lastname != null) {
    print("Your firstname : $firstname and your lastname : $lastname");
  } else {
    print("Your firstname is : $firstname");
  }
}
