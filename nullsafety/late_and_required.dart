void main() {
  // ── late keyword ──────────────────────────────────────────────
  // Declares a variable to be initialized later.
  // Promises it will be assigned before use.
  late String title;
  title = "Flutter Developer";
  print(title); // Using it before assignment would throw an error.

  // ── required keyword ──────────────────────────────────────────
  // Forces the caller to provide a value for a named parameter.
  greet("sokchea", message: "Hello, I am a Flutter developer");
  print("=" * 20);

  // ── required keyword in a class constructor ────────────────────
  final person = Person(name: "Sokchea", age: 21);
  print("${person.name} / ${person.age}");
  print("=" * 20);

  // ── combining late and required ─────────────────────────────────
  final student = Student(name: "Sokchea", age: 21);
  student.assignCourse("Flutter");
  print("${student.name} / ${student.age} / ${student.course}");
}

/// Optional [name] (nullable, defaults to null if omitted).
/// Required [age] — must always be provided.
class Person {
  final String? name;
  final int age;

  Person({this.name, required this.age});
}

/// Demonstrates `late` combined with `required`:
/// - [name] and [age] must be provided at construction.
/// - [course] is assigned later, after the object exists.
class Student {
  final String name;
  final int age;
  late String course;

  Student({required this.name, required this.age});

  void assignCourse(String courseName) {
    course = courseName; // `this.` isn't needed here — no naming conflict.
  }
}

/// Function with a required named parameter.
/// [name] is optional and nullable; [message] must be passed.
void greet(String? name, {required String message}) {
  print("Hello $name, Message: $message");
}
