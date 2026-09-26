void main() {
  /**
   * async and await make asynchronous programming look clean and like normal code
   * we don't need to write nested callback function (function as params) in many line
   * we should use await to make the code easier to read and clean 
   */
  print("program start");
  downloadingData().then((value) => print(value));

  // String? message = downloadingData().toString(); // can use this also
  print("program finish");
}

Future<String> downloadingData() async {
  await Future.delayed(
    Duration(seconds: 3),
  ); // waif for 3 second but don't use callback
  return "Data Downloaded...";
}

// Future<String> downloadingData() {
//   return Future.delayed(
//     Duration(seconds: 3),
//     () => "Data Downloaded...",
//   ); // waif for 3 second but don't use callback
// }
