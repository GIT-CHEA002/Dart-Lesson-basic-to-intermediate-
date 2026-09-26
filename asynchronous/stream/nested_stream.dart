void main() async {
  // stream2 internally nests stream1 using `yield*`
  stream2(3).listen(
    (data) => print('Stream 2 emitted: $data'),
    onError: (error) => print('Error: $error'),
    onDone: () => print('Stream 2 done'),
  );
}

/// Emits 0..count, one value per second.
Stream<int> stream1(int count) async* {
  if (count <= 0) throw Exception('stream1: count must be > 0');

  for (int i = 0; i <= count; i++) {
    await Future.delayed(const Duration(seconds: 1));
    print('  stream1 yielding: $i');
    yield i; // fixed: was hardcoded to 1
  }
}

/// For each iteration:
///  1. waits 1 second
///  2. delegates entirely to stream1 (yield*) — all of stream1's values
///     pass through to stream2's listener before stream2 continues
///  3. yields its own value
Stream<int> stream2(int count) async* {
  if (count <= 0) throw Exception('stream2: count must be > 0');

  for (int i = 0; i <= count; i++) {
    await Future.delayed(const Duration(seconds: 1));

    print('stream2 delegating to stream1...');
    yield* stream1(3); // nested stream, fully drained before continuing

    print('stream2 yielding own value: $i');
    yield i;
  }
}
