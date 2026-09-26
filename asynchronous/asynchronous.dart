import 'dart:io';

void main() async {
  /**
   * Asynchronous programming refers to writing a program with async factors.
   * Async: tasks run independently — one task does NOT need to wait
   * for another task to finish before it can start or continue.
   */

  // Example of synchronous programming
  print("Task 1 : Start");
  print("Task 2 : Start");

  print("Example of Sync");
  // Synchronous loop: each iteration BLOCKS the program.
  // sleep() freezes everything — no other code can run until it's done.
  // This is NOT async — it's the opposite: one task at a time, in order.
  for (int i = 0; i < 10; i++) {
    print("From synchronous : $i");
    sleep(Duration(seconds: 1));
  }
  print("Loop finished");

  print("=================");

  print("Example of Async");
  // Asynchronous loop: each iteration pauses only THIS function.
  // await Future.delayed() does NOT freeze the whole program —
  // other scheduled async work (if any) could run during the wait.
  for (int i = 0; i < 10; i++) {
    print("From Asynchronous : $i");
    await Future.delayed(Duration(seconds: 1));
  }
  print("Async loop finished");
}

