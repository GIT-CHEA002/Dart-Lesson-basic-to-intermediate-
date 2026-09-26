/**
 * Future refers to a value or process that will be available at some point
 * in the future — e.g. downloading data, fetching from an API, reading a file.
 *
 * We mostly use Future when building apps because it runs in the background
 * without blocking or affecting the performance of the rest of the app.
 */

void main() {
  print("Start");

  // ── .then() : callback style ──
  // then() runs code after the Future completes (after waiting).
  getData().then((value) => print(value));
  addNumber(20, 30).then((value) => print(value));

  print("End");

  // ============================================
  // COMPARE: Future.then() vs async/await
  // ============================================

  // ── .then() : callback style ──
  Future.delayed(Duration(seconds: 1), () => "Data")
      .then((data) => print(data)) // runs when data is ready
      .catchError((e) => print(e)); // handles error

  // ── async/await : sequential style ──
  run();

  // ============================================
  // RULES
  // ============================================
  // .then()        -> usable anywhere, no async needed, chains via callbacks
  // await          -> only inside an async function, chains via flat lines
  // .catchError()  -> pairs with .then()
  // try/catch      -> pairs with await
  // multiple steps -> .then() nests deeply | await stays flat & readable
}

// ── async/await version ──
Future<void> run() async {
  try {
    var data = await Future.delayed(Duration(seconds: 1), () => "Data");
    print(data); // waits here, then runs
  } catch (e) {
    print(e); // handles error
  }
}

// Returns the sum of a and b after a 2-second delay.
Future<int> addNumber(int a, int b) {
  return Future.delayed(Duration(seconds: 2), () => a + b);
}

// Returns a string after a 3-second delay.
Future<String> getData() {
  return Future.delayed(Duration(seconds: 3), () => "Data loading...");
}
