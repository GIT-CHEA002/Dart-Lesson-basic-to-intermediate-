void main() async {
  /**
   * Stream has 3 event : 
   * 1. Data : listen
   * 2. Erorr : onError
   * 3. Done : onDone
   */
  numbers(10).listen(
    (value) => print("$value(listen)"), // listen
    onError: (error) => print(error), // error catching
    onDone: () => print("Stream end"), // complete process
  );
  numbers(-10).listen(
    (value) => print(value), // listen
    onError: (error) => print(error), // error catching
    onDone: () => print("Stream end"), // complete process
  );

  // using try and catch (work like 3 event of the stream)
  try {
    await for (final value in numbers(10)) {
      print("$value(try catch)");
    }
  } catch (error) {
    print(error);
  } finally {
    print("Stream done");
  }
}

Stream<int> numbers(int count) async* {
  if (count == 0) throw Exception("The argument can not less than 0");
  for (int i = 0; i <= count; i++) {
    await Future.delayed(Duration(seconds: 1)); // await for 1 seconds
    yield i; // stream data
  }
}
