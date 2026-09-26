void main() async {
  /**
   * Using try and catch is commonyly in the dart programming like fetching the APIs
   */
  try {
    double result = await divided(10, 0);
  } catch (error) {
    print(error);
  } finally {
    print("The process has ended");
  }
}

Future<double> divided(int a, int b) async {
  if (b == 0) throw Exception("Can not divided by 0");
  return (a / b).toDouble();
}
