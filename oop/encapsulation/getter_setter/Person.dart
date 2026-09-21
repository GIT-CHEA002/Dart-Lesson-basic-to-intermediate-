class Person {
  String? _name;
  String? _gender;
  int? _age;

  // get
  String? get Name => this._name;
  String? get Gender => this._gender;
  int? get Age => this._age;

  // set
  set Name(String name) => this._name = name;
  set Gender(String gender) => this._gender = gender;
  set Age(int age) => this._age = age;
  void Display() {
    print("Name : ${this._name}/ Gender : ${this._gender}/ Age : ${this._age}");
  }
}
