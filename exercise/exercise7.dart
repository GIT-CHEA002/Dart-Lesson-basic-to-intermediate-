import 'dart:io';

void main() {
  stdout.write("Enter size of List : ");
  int size = int.parse(stdin.readLineSync()!);
  workWithArray(size);
}

void workWithArray(int size) {
  List<int> numbers = [];

  if (size <= 0) {
    print("Invalid size (must be greater than 0)");
    return;
  }

  for (int i = 0; i < size; i++) {
    stdout.write("Enter element index($i): ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  int choice;

  do {
    print("1. Output");
    print("2. Sort Ascending");
    print("3. Sort Descending");
    print("4. Show prime Number");
    stdout.write(
      "Enter your choice to do with this array (1,2,3,4,0 to exit): ",
    );
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        {
          print("All array elements are:");
          print("==========================");
          numbers.forEach((element) => stdout.write("$element "));
          print("\n==========================");
          break;
        }

      case 2:
        {
          numbers.sort((a, b) => a.compareTo(b));
          break;
        }

      case 3:
        {
          numbers.sort((a, b) => b.compareTo(a));
          break;
        }

      case 4:
        {
          print("Prime numbers in the array:");

          List<int> primeList = [];

          numbers.forEach((element) {
            if (element < 2) return;

            bool isPrime = true;

            for (int i = 2; i * i <= element; i++) {
              if (element % i == 0) {
                isPrime = false;
                break;
              }
            }

            if (isPrime) {
              primeList.add(element);
            }
          });
          print("==========================");
          primeList.forEach((element) => stdout.write("$element "));
          print("\n==========================");
          break;
        }
      case 0:
        {
          print("Exiting....");
          return;
        }

      default:
        print("Invalid choice");
    }
  } while (choice >= 1 && choice <= 4);
}
