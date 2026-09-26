void main() {
  /**
   * then() execute the callback function when the future complete 
   * whenComplete() execute the callback after finish then()
   */
  fetchData()
      .then((_) {
        print("Data loaded...");
      })
      .whenComplete(() {
        print("The process done");
      });
}
Future<void> fetchData() async {
  return await Future.delayed(Duration(seconds: 5));
}
