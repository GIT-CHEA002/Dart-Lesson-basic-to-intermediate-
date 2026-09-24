void main() {
  List<int>? numbers; // nullable list

  // Safe access: only accesses .length if numbers is not null.
  // If numbers is null, this returns null instead of throwing an error.
  print(numbers?.length); // prints: null

  numbers = [1, 2, 3];
  print(numbers?.length); // prints: 3
}
