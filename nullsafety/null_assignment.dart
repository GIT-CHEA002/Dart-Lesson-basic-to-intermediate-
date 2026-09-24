void main() {
  // null assignment : assign value only when the current value is null. points ?? = 0;
  // usefull when fetching the the data : you still need some default with 0 or "" if there is an null column
  double? point = 0;
  point ??= 20; // stay 0 becuase point is not null
  print(point);
  String? name;
  name ??= "Sokchea";
  print(name);
}
