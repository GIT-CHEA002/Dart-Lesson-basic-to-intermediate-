import 'dart:async';

void main() async {
  /**
   * Stream controller : A Stream in Dart is a sequence of asynchronous events.
   * You can listen to a stream, but you can't manually push events into it — that's
   * where StreamController comes in. It's the "remote control" that lets you create
   * a stream and manually add data, errors, or close it whenever you want.
   * Step of using stream
   * 1. create controller 
   * 2. listen to the stream
   * 3. add or push data into the stream
   * 4. signals onDone (close the stream)
   */
  StreamController controller = StreamController();

  // listen to the stream
  controller.stream.listen(
    (data) => print('Recieved : $data'),
    onError: (error) => print(error),
    onDone: () => print("The stream end"),
  );
  // controller.stream.listen(
  //   (data) => print('Recieved : $data'),
  //   onError: (error) => print(error),
  //   onDone: () => print("The stream end"),
  // ); // error because the controller is single-subscription (so we use broadcast to solve this problem)

  // push data into stream
  controller.add(1);
  controller.add(2);
  controller.add(3);
  controller.addError('Something went wrong');
  controller.add(4);
  controller.close(); // signals onDone

  StreamController controller2 =
      StreamController<
        int
      >.broadcast(); // make broadcast controller (multiple listeners)
  controller2.stream.listen((data) => print("Listen stream A : $data"));
  controller2.stream.listen((data) => print("Listen stream B : $data"));
  controller2.add(10);
  controller2.add(20);

  // add a whole stream to streamController
  StreamController controller3 = StreamController<int>.broadcast();
  // listen to the stream
  controller3.stream.listen(
    (data) => print("whole stream : $data"),
    onError: (error) => print(error),
    onDone: () => print("The process end"),
  );
  controller3.stream
      .where((data) => data % 2 == 0)
      .listen(
        (data) => print("Event stream : $data"),
        onError: (erorr) => print(erorr),
        onDone: () => print("The event stream has end "),
      );
  // add data to stream
  controller3.addStream(counterStream(20));
}

Stream<int> counterStream(int count) async* {
  if (count <= 0) throw Exception("Invalid argument value");
  for (int i = 0; i <= count; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
