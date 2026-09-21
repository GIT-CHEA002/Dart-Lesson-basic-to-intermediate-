void main() {
  Testing("sokchea", "I am mnus smos");
  Testing("Danin");
}

// default param is use like optional param : by with initailize value , with [] to wrap its
void Testing(String name, [String? message = "Hello bro by default"]) {
  if (message != null) {
    print("Hello $name , your message is : $message");
  } else {
    print("Hello $name, your message is : $message");
  }
}
