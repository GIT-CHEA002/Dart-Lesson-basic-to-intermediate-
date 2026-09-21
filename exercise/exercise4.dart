import 'dart:io';
import 'dart:math';

void main() {
  // input choice
  stdout.write("Enter your choice [one,two,three] : ");
  String? choice = stdin.readLineSync()!.toLowerCase();
  switch (choice) {
    case "one":
      {
        guessNumber(1, 10, choice);
        break;
      }
    case "two":
      {
        guessNumber(10, 100, choice);
        break;
      }
    case "three":
      {
        guessNumber(100, 1000, choice);
      }
    default:
      {
        print("Invalid choices");
      }
  }
}

// guess function
void guessNumber(int start, int last, String? choice) {
  int guessNumber;
  Random random = new Random();
  print("Your choice is : ${choice}");
  stdout.write("Enter guess number (${start} - ${last - 1}):");
  guessNumber = int.parse(stdin.readLineSync()!);
  // 1 to 9
  if (guessNumber > last) {
    print("Not Correct Number in range ");
    return;
  }
  int machineNumber = random.nextInt(last - start) + start;
  if (guessNumber == machineNumber)
    print("${choice} :${guessNumber}:${machineNumber} Win!");
  else
    print("${choice} :${guessNumber}:${machineNumber} Lose!");
}
