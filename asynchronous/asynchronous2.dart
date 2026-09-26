Future<void> main() async {
  /**
   * Async programming allows you to perform tasks without blocking the main thread
   */
  print("Task 1 : Start");

  // This wait 2 seconds but does not block the whole program
  Future.delayed(Duration(seconds: 2), () {
    print("Task 2 : Middle(after delay)");
  });
  print("Task 3 : End");
}
