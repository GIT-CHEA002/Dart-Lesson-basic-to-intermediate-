import 'dart:async';

void main() async {
  final stream = counterStream(10);

  stream.listen(
    (onData) => print(onData),
    onError: (error) => print(error),
    onDone: () => print("object"),
  );
  // stream.listen(
  //   (onData) => print(onData),
  //   onError: (error) => print(error),
  //   onDone: () => print("object"),
  // ); this will error because the stream is already listen once(single subscription)

  // The solution : use .asBroadcastStream() or StreamController.broadcast()s
  // using .asBroadcaseStream()
  var stream2 = counterStream(
    10,
  ).asBroadcastStream(); // tell dart the make stream2 act broadbasting
  stream2.listen(
    (onData) => print(onData),
    onError: (error) => print(error),
    onDone: () => print("Stream 2 done"),
  );
  stream2.listen(
    (onData) => print(onData),
    onError: (error) => print(error),
    onDone: () => print("Stream 2 done"),
  );
  // use StreamController()
  StreamController controller = StreamController();
  // listen
  controller.stream.listen((data) => print("controller recieved: $data"));
  // add value manually
  controller.sink.add(10);
  controller.sink.add(20);
  controller.sink.add(30);
  // close the streamcontroller
  controller.close();
}

Stream<int> counterStream(int count) async* {
  if (count == 0) throw Exception("Invalid value on argument");
  for (int i = 0; i <= count; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // stream data
  }
}
Stream<String> fetchData() async* {
  for (int i = 0; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield "Fetch Data...";
  }
}
