void main() async {
  /**
   * we can tranform the stream value by filter, map(change) and reduce them before subscripe or listen to the stream
   * 
   */
  // subscribe and filter : print only event number
  counterStream(10)
      // additional methods
      .where((data) => data % 2 == 0)
      // step of stream
      .listen(
        (value) => print("$value(filter)"),
        onError: (error) => print(error),
        onDone: () => print("Stream end"),
      );
  // subscribe and change (map)
  counterStream(10)
      // additional methods
      .map((data) => data * 10)
      // step of stream
      .listen(
        (value) => print("$value(change)"),
        onError: (error) => print(error),
        onDone: () => print("Stream end"),
      );
}

Stream<int> counterStream(int count) async* {
  if (count == 0) throw Exception("Invalid value on argument");
  for (int i = 0; i <= count; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // stream data
  }
}
