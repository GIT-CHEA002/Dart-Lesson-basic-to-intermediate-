import 'dart:io';

void main() async {
  /**
   * Async operations can fail due to network problems, file errors, server errors.
   * We can handle them using: (then, catchError, whenComplete) or (try, catch, finally)
   */
  // 1. Handle using then, catchError and whenComplete
  divided(10, 0)
      .then((result) {
        // the same as try
        print(result);
      })
      .catchError((error) {
        // the same as catch
        print(error);
      })
      .whenComplete(() {
        // the same as finally
        print("The process end (then/catchError version)");
      });

  // call and handle the printNumber function
  printNumber(10)
      .then((_) {
        print("object");
      })
      .catchError((onError) {
        print(onError);
      })
      .whenComplete(() {
        print("The process end");
      });
  printNumber(-5)
      .then((_) {
        print("object");
      })
      .catchError((onError) {
        print(onError);
      })
      .whenComplete(() {
        print("The process end");
      });
}

Future<double> divided(int a, int b) async {
  if (b == 0) throw Exception('Can not divided by 0');
  return (a / b).toDouble();
}

Future<void> printNumber(int count) async {
  if (count < 0) throw Exception("Invalid argument value");
  for (int i = 0; i < count; i++) {
    stdout.write("$i ");
    await Future.delayed(Duration(seconds: 1));
  }
}
