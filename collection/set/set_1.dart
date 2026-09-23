// Part 1 : Basic Creation and Add/Remove
/**
 * set : a unique collection under the same name
 * 1. can not have duplicated value
 *
 * Methods:
 * - add(value)        : adds a single element to the set
 * - addAll(iterable)  : adds multiple elements from another iterable
 * - remove(value)      : removes a specific element if it exists
 * - removeAll(iterable): removes all matching elements from another iterable
 * - clear()            : removes all elements, leaving the set empty
 * - contains(value)    : checks if a specific element exists in the set
 * - containsAll(iterable): checks if all elements of another iterable exist
 * - lookup(object)      : returns the object in the set equal to the given one
 * - elementAt(index)    : returns the element at a specific index (order not guaranteed)
 * - intersection(other): returns common elements between two sets
 * - union(other)        : returns all elements from both sets
 * - difference(other)   : returns elements in one set but not in the other
 * - forEach(action)     : applies a function to each element
 * - where(condition)    : filters elements based on a condition
 * - toList()            : converts the set into a list
 * - toSet()             : converts another iterable into a set
 * - length              : returns the number of elements
 * - isEmpty()           : true if the set has no elements
 * - isNotEmpty()        : true if the set has at least one element
 * - first/last          : returns the first or last element in iteration order
 */
void main() {
  Set<int> setA = {10, 20, 30, 40, 50, 60};
  print(setA);

  setA.add(10); // still the same since the set store unique value
  print(setA);

  setA.addAll({1, 2, 3, 4});
  print(setA);

  setA.remove(10);
  print(setA);

  setA.removeAll({20, 30});
  print(setA);

  setA.clear();
  print(setA);
}
