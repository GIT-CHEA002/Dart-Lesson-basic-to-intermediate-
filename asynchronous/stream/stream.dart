import 'dart:io';

void main() async {
  /**
   * Stream is a sequence of asynchronous operations(event)
   * Example : APIs Data, Sensor data
   */
  // listen or subscribe to stream

  // method 1 : listen to stream and print instant data
  numberStream().listen((data) => stdout.write("$data(listen) "));

  // method 2 : using await and specified the data sending type
  await for (int value in numberStream()) {
    stdout.write("$value(await) ");
  }
}


Stream<int> numberStream() async* {
  for (int i = 0; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // use for sending data rather then return value (stream sending )
  }
}
