void main() {
  /* operator are sign use to calculate mathematic 
     There are many operator in dart that separate into 3 main category : 
     1. Arithmetic operator : + , - , * , / , %, ~/ (integer division)
     2. comparision operator: > , < , >= , <=, == , != 
     3. Logical operator    : && , || , !=
     4. bit wise operator   :  &, | , !
     5. special operator    : ++(increment operator) , -- (decrement operator) 
  */

  int a = 22;
  int b = 10;
  // Arithmetic
  print(("Test arithmetic operator with a = 22 , b = 10"));
  print("${a} - ${b} = ${a - b}");
  print("${a} + ${b} = ${a + b}");
  print("${a} / ${b} = ${a / b}");
  print("${a} * ${b} = ${a * b}");
  print("${a} % ${b} = ${a % b}");
  print("${a} ~/ ${b} = ${a ~/ b}");
  // comparision
  print("Test comparison operator in dart with variable a and b ");
  print("Is ${a} > ${b} : ${a > b}");
  print("Is ${a} < ${b} : ${a < b}");
  print("Is ${a} >= ${b} : ${a >= b}");
  print("Is ${a} < ${b} : ${a <= b}");
  print("Is ${a} == ${b} : ${a == b}");
  print("Is ${a} != ${b} : ${a != b}");
  // logical operator
  print("Test logical operator in dart ");
  bool isDaninSmos = false;
  bool isDaninGooner = true;
  print("${isDaninSmos} && ${isDaninGooner} : ${isDaninSmos && isDaninGooner}");
  print("${isDaninSmos} || ${isDaninGooner} : ${isDaninSmos || isDaninGooner}");
  print("${isDaninSmos} ! ${isDaninGooner} : ${isDaninSmos != isDaninGooner}");
  print("!${isDaninGooner} :${!isDaninGooner} ");
  // increment and decrement
  // use a++ , it means increment after work
  // use a-- , it means decrement after work:
  int number = 10;
  print("${number} number fter increment :  ${number++}");
  print("${number} after decrement :  ${number--}");
  // use --a , it mean decrement before work
  // use ++a, it mean increment before work
  print("${number} before increment : ${--number}");
  print("${number} before decrement : ${++number}");
  // bit wise operator
  print("Test bit wise operator : ");
  final int num1 = 2;
  final int num2 = 3;
  // print assertion
  print("${num1} & ${num2} : ${num2 & num1}");
  print("${num1} & ~ ${~num2} : ${num2 & ~num1}");
  print("${num1} | ${num2} : ${num2 | num1}");
  print("${num1} ^ ${num2} : ${num2 ^ num1}");
  print("${num1} & ${num2} : ${num2 & num1}");
}
