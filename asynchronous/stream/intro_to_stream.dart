import 'dart:async';

/// ============================================================
/// STREAM IN DART — SUMMARY
/// ============================================================
/// Future  -> handles ONE async value (or error), once.
/// Stream  -> handles MULTIPLE async values, emitted over time.
/// Analogy: Future = ordering food & waiting once.
///          Stream = a subscription, values keep arriving.
/// ============================================================

void main() async {
  // --------------------------------------------------------
  // 1. CREATE A STREAM using async* + yield
  //    - async*  => marks a "generator function" for a stream
  //    - yield   => emits ONE value into the stream (can yield many times)
  // --------------------------------------------------------

  // --------------------------------------------------------
  // 2. LISTEN TO A STREAM using .listen()
  //    - onData  => called every time a new value arrives
  //    - onError => called if the stream throws/emits an error
  //    - onDone  => called once when the stream is fully closed
  // --------------------------------------------------------
  countStream(5).listen(
    (value) => print('Received: $value'),
    onError: (error) => print('Error: $error'),
    onDone: () => print('Stream closed'),
  );

  // --------------------------------------------------------
  // 3. AWAIT FOR — loop over a stream sequentially
  //    - only works inside an async function
  //    - waits for the WHOLE stream before moving to next line
  //    - wrap in try/catch to handle errors (like Future's try/catch)
  // --------------------------------------------------------
  try {
    await for (final value in countStream(3)) {
      print('Got: $value');
    }
  } catch (error) {
    print('Caught: $error');
  } finally {
    print('await for loop done');
  }

  // --------------------------------------------------------
  // 4. TRANSFORM STREAMS
  //    - .where()  => filter values (like List.where)
  //    - .map()    => transform each value (like List.map)
  //    - Can be chained together
  // --------------------------------------------------------
  countStream(10)
      .where((value) => value % 2 == 0) // keep even numbers only
      .map((value) => value * 10) // multiply each value
      .listen((value) => print('Transformed: $value'));

  // --------------------------------------------------------
  // 5. SINGLE-SUBSCRIPTION vs BROADCAST STREAMS
  //    - Default streams => only ONE listener allowed
  //    - .asBroadcastStream() or StreamController.broadcast()
  //      => allows MULTIPLE listeners
  // --------------------------------------------------------
  final broadcastStream = countStream(3).asBroadcastStream();
  broadcastStream.listen((v) => print('Listener 1: $v'));
  broadcastStream.listen((v) => print('Listener 2: $v'));

  // --------------------------------------------------------
  // 6. STREAM CONTROLLER — manually push values into a stream
  //    - Useful for wrapping sockets, sensors, custom event sources
  //    - controller.add(value)  => emit a value
  //    - controller.addError()  => emit an error
  //    - controller.close()     => finish the stream (triggers onDone)
  //    - use .broadcast() constructor for multiple listeners
  // --------------------------------------------------------
  final controller = StreamController<int>();
  controller.stream.listen(
    (value) => print('Controller value: $value'),
    onDone: () => print('Controller closed'),
  );
  controller.add(1);
  controller.add(2);
  controller.close();

  // --------------------------------------------------------
  // 7. AGGREGATE / COLLECTOR METHODS
  //    - These all return a Future (they wait for the stream to finish)
  // --------------------------------------------------------
  print(await countStream(5).toList()); // [1, 2, 3, 4, 5]
  print(await countStream(5).first); // 1
  print(await countStream(5).last); // 5
  print(await countStream(5).length); // 5
  print(await countStream(5).contains(3)); // true
  print(await countStream(5).reduce((a, b) => a + b)); // 15 (sum)

  // --------------------------------------------------------
  // 8. CANCELLING A SUBSCRIPTION
  //    - .listen() returns a StreamSubscription
  //    - call .cancel() to stop listening early
  // --------------------------------------------------------
  final subscription = countStream(10).listen((value) {
    print('Ticking: $value');
  });
  Future.delayed(Duration(seconds: 3), () {
    subscription.cancel();
    print('Cancelled after 3 seconds');
  });

  // --------------------------------------------------------
  // QUICK CHEAT SHEET
  // --------------------------------------------------------
  // async* / yield        -> create a stream from a generator function
  // .listen()              -> subscribe (onData / onError / onDone)
  // await for              -> loop over a stream sequentially (async fn only)
  // .map() / .where()      -> transform / filter stream values
  // StreamController       -> manually push values (add/addError/close)
  // .asBroadcastStream()   -> allow multiple listeners
  // .toList()/.first/.last -> collect stream results into a single value
  // .cancel()              -> stop listening early
  //
  // FLUTTER NOTE:
  // StreamBuilder widget automatically rebuilds UI whenever
  // a stream emits new data (e.g. live Firestore/WebSocket data).
}

/// A simple stream generator that emits numbers 1..max,
/// one per second, using async* + yield.
Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
