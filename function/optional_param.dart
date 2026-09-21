void main() {
  Greeting("sokchea");
  Greeting("Tola", "Sava");
}

// the optional param use for default parsing , like default param , you can either parse or don't parse the argument
void Greeting(String name, [String? title]) {
  if (title != null) {
    print("Hello $name: $title");
  } else {
    print("Hello $name");
  }
}
