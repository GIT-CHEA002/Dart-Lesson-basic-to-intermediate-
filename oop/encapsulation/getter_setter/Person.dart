class Person {
  String? _name;
  String? _gender;
  int? _age;

  // get
  String? get name => this._name;
  String? get Gender => this._gender;
  int? get Age => this._age;

  // set
  set name(String name) => this._name = name;
  set Gender(String gender) => this._gender = gender;
  set Age(int age) => this._age = age;
  void Display() {
    print("name : ${this._name}/ Gender : ${this._gender}/ Age : ${this._age}");
  }
}
