
/**
 * In dart, the spread operator (...)
 * and the null-aware spread operator (...?) are 
 * a sleek ways to insert multiple elements into 
 * a collection (like lists, sets, or Maps). Thinks of it 
 * as one collection  into  another
 */
void main() {
  print("This is the lesson about spread operator");
  var list1 = ['apple', 'orange', 'mango'];
  var list2 = ['grape', 'cherry', 'passion'];

  print(list2);
  print(list1);

  var list3 = ['bluberry', ...list1, 'kiwi', ...list2];
  print(list3);

  var number = [1, 2, 4, 4, 5, 6, 7, 8, 8, 9, 19, 56, 42, 11, 99];

  print(sum([10, 20, 30, 40, ...number]));

  print(
    calculator([
      10,
      20,
      30,
      40,
      50,
      60,
      ...number,
    ], (List<int> iterable) => iterable.reduce((a, b) => a + b).toInt()),
  );
  print(
    calculator([
      10,
      20,
      30,
      40,
      50,
      60,
    ], (List<int> iterable) => iterable.reduce((a, b) => a - b).toInt()),
  );
}
int sum(List<int> iterable) {
  return iterable.reduce((a, b) => a + b).toInt();
}

int calculator(List<int> iterable, Function operator) {
  return operator(iterable);
}
