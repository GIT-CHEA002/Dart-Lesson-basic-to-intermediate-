void main() {
  Greeting1("sokchea");
  Greeting2("sockhea");
  Greeting3("Sokchea");
  Greeting3("Sokchea", "Jojo");
  Greeting4("Sokchea");
  Greeting4("Sokchea", message: "Hello kon papa");
}

void Greeting1(String name) {
  print("Hello $name");
}

// optional param
void Greeting2(String name, [String? message]) {
  if (message != null) {
    print("Hello $name : $message");
  } else {
    print("Hello $name");
  }
}

// default param
void Greeting3(String name, [String? message = "Hello anh ah s'hav"]) {
  print("Hello $name : $message");
}

// name param
void Greeting4(String name, {String? message}) {
  if (message != null) {
    print("Hello $name : $message");
  } else {
    print("Hello $name");
  }
}
