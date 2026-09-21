import 'dart:io';

void main() {
  Student student = new Student(
    firstname: "Sokchea",
    lastname: "Chhun",
    gender: "Male",
    id: "SLS007",
    group: "Mobile Team 2",
    year: 2026,
    score: new Score(sub1: 100, sub2: 89, sub3: 90, sub4: 79, sub5: 99),
    contact: new Contact(
      email: "chhunsokchea317@gmail.com",
      phone: "071 57 63 396",
    ),
  );
  // call the methods Info
  student.Info();
  // create list of student
  int size = 0;
  stdout.write("Enter size of student list : ");
  size = int.parse(stdin.readLineSync()!);
  List<Student> students = List.generate(size, (index) => Student());
  for (int i = 0; i < size; i++) {
    students[i].inputData();
  }
  students.forEach((element) {
    element.Info();
  });
}

class Person {
  String? firstname;
  String? lastname;
  String? gender;
  Person({this.firstname, this.lastname, this.gender});
  void Info() {
    // info of person
    print("Firstname : $firstname\nLastname : $lastname\nGender : $gender");
  }

  void inputData() {
    stdout.write("Enter firstname : ");
    this.firstname = stdin.readLineSync();
    stdout.write("Enter lastname : ");
    this.lastname = stdin.readLineSync();
    stdout.write("Enter gender : ");
    this.gender = stdin.readLineSync();
  }
}

class Contact {
  String? email;
  String? phone;
  Contact({this.email, this.phone});
  void contactInfo() {
    print("Email : $email\nPhone : $phone");
  }

  void inputContactData() {
    stdout.write("Enter Email : ");
    this.email = stdin.readLineSync();
    stdout.write("Enter Phone : ");
    this.phone = stdin.readLineSync();
  }
}

class Score {
  double? sub1;
  double? sub2;
  double? sub3;
  double? sub4;
  double? sub5;
  Score({this.sub1, this.sub2, this.sub3, this.sub4, this.sub5});
  void inputScoreInfo() {
    stdout.write("Subject 1 : ");
    this.sub1 = double.parse(stdin.readLineSync()!);
    stdout.write("Subject 2 : ");
    this.sub2 = double.parse(stdin.readLineSync()!);
    stdout.write("Subject 3 : ");
    this.sub2 = double.parse(stdin.readLineSync()!);
    stdout.write("Subject 4 : ");
    this.sub2 = double.parse(stdin.readLineSync()!);
    stdout.write("Subject 5 : ");
    this.sub2 = double.parse(stdin.readLineSync()!);
  }

  void scoreInfo() {
    print(
      "Sub 1 = $sub1\tSub 2 = $sub2\tSub 3 = $sub3\tSub 4 = $sub4\tSub 5 = $sub5",
    );
    print(
      "Total Score : ${(sub1 ?? 0) + (sub2 ?? 0) + (sub3 ?? 0) + (sub4 ?? 0) + (sub5 ?? 0)}",
    );
  }
}

class Student extends Person {
  String? id;
  String? group;
  int? year;
  Contact? contact;
  Score? score;
  // generative contructor of Student class (call the contact and score in student's constructor )
  Student({
    String? firstname,
    String? lastname,
    String? gender,
    this.id,
    this.group,
    this.year,
    this.score,
    this.contact,
  }) : super(firstname: firstname, lastname: lastname, gender: gender);
  @override
  void Info() {
    super.Info();
    contact?.contactInfo();
    score?.scoreInfo();
    print("======================");
  }

  @override
  void inputData() {
    // TODO: implement inputData
    super.inputData();
    //     String? id;
    // String? group;
    // int? year;
    stdout.write("Enter id : ");
    this.id = stdin.readLineSync();
    stdout.write("Enter group : ");
    this.group = stdin.readLineSync();
    stdout.write("Enter year : ");
    this.year = int.parse(stdin.readLineSync()!);
    contact = Contact();
    score = Score();
    contact?.inputContactData();
    score?.inputScoreInfo();
    print("======================");
  }
}
