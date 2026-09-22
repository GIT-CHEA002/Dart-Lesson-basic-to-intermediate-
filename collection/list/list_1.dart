/**
 * List is a collection of value under the same name and we can access them by 
 * using the index number
 */

import 'dart:io';

/**
 * List methods:
 * 1. add(value) : adding the new value at the end of the list
 * 2. addAll(iterable): add multiple element to the end of the list
 * 3. insert(pos,value) : add a value to the specific location of the list
 * 4. insertAll(pos,iterable): add multiple value to the specific position of the list
 * 5. remove(value): remove the first matching value(count from index 0)
 * 6. removeAt(index): remove value at the index
 * 7. removeLast(): remove the last value of the list
 * 8. removeRange(start,end): remove the range value from the list
 * 9. clear(): remove all value but keep list as empty list
 * 10. lenght: get the length of the list
 * 11. isEmpty: check if the list is empty and return a boolean value
 * 12. isNotEmpty : check if the list is not empty and return a boolean value
 * 13. contains(value): check if the list containing a value
 * 14. indexOf(value): check the index of the value
 * 15. lastIndexOf(value): check the last index of a value in list
 * 16. sort(): order the list as ascending
 * 17. reversed(): reversed the list
 * 18. foreach(): use to access the element of list
 * 19. map(): change the value through the call back
 * 20. filter() , where(): filter the value by condition as arrow function inside
 * 21. reduce(): combine the value
 * 22. fold():
 * 23. any():
 * 24. every():
 * 25. sublist(start,end): create sublist
 * 26. join("sep"): join the list by the sep
 * 27. suffle(): suffle element of the list
 */
void main() {
  var number = [10, 20, 30, 40, 50];
  print(number);
  print("================");
  for (int i = 0; i < number.length; i++) {
    stdout.write(" ${number[i]}");
  }
  print("");
  number[0] = 10000;
  print(number);
}
