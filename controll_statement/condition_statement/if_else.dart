void main() {
  /**
   * condition statement are the statement that execute code of its block when the 
   * condition remain true
   */
  // Example of condition statement
  // if
  int age = 20;
  if (age > 18) {
    print("You can married");
  }
  String? name = "sokchea";
  if (name.toLowerCase() == 'sokchea') {
    print("Welcome pozz smos ${name}");
  }
  // if else
  String? username = "sokchea007";
  if (username == "sokhea007") {
    print("You are an admin of our system");
  } else {
    print("Your are the guest");
  }
  // if else statement
  double score = 90;
  String? grade;

  if (score >= 90 && score <= 100) {
    grade = 'A';
  } else if (score >= 80) {
    grade = 'B';
  } else if (score >= 70) {
    grade = 'C';
  } else if (score >= 60) {
    grade = 'D';
  } else {
    grade = 'F';
  }
  print('Grade: $grade');
}
