void main() {
  // ! : tells Dart "trust me, this nullable variable is NOT null right here"
  String? gender;
  gender = "male"; // assign a value first
  print(gender!); // ✅ works fine, because gender is not null

  String? name;
  print(
    name!,
  ); // throw run time exception cuz the variable is null at this points
}
