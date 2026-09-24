void main() {
  // default value : use fallback value if the variable if null. name ?? "sokchea";
  String? name;
  // name = "Sokchea";
  String? copyName =
      name ??
      "Chhun Sokchea"; // if the name is null it will pick "Chhun Sokchea" as default value
  print(copyName);
  double? price = 200.00;
  double? discount;
  // discount = 12.4;
  double? total =
      price -
      (discount ??
          0); // the total will include the substract of discount if it exist
  print(total);
}
