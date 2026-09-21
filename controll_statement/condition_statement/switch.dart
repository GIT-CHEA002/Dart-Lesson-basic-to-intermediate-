import 'dart:io';

void main() {
  // switch case statement is like condition statement
  // use to check the choice rather than a condition
  int daynum;
  stdout.write("Enter day number(1-7):");
  daynum = int.parse(stdin.readLineSync()!);
  switch (daynum) {
    case 1:
      {
        print("Today is monday");
        break;
      }
    case 2:
      {
        print("Today is Tuesday");
        break;
      }
    case 3:
      {
        print("Today is wednesday");
        break;
      }
    case 4:
      {
        print("Today is Thursday");
        break;
      }
    case 5:
      {
        print("Today is Friday");
        break;
      }
    case 6:
      {
        print("Today is saturday");
        break;
      }
    case 7:
      {
        print("Today is sunday , enjoy your weekend");
        break;
      }
    default:
      {
        print("Invalid Day number");
        break;
      }
  }
}
