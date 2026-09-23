/**
 * Map is a type of data structure that stores values
 * as key-value pairs.
 *
 * Methods:
 * 1. addAll({key:value,...}) : adds multiple key-value pairs to the map
 * 2. putIfAbsent(key, function): adds a key-value pair only if the key does not exist
 * 3. remove(key)              : removes the element by its key
 * 4. removeWhere(condition)   : removes elements that match a condition
 * 5. clear()                  : removes all key-value pairs
 * 6. keys                     : returns all keys of the map
 * 7. values                   : returns all values of the map
 * 8. entries                  : returns all key-value pairs as MapEntry objects
 * 9. length                   : returns the number of key-value pairs
 * 10. containsKey(key)        : checks if the map contains a specific key
 * 11. containsValue(value)    : checks if the map contains a specific value
 * 12. forEach(action)         : iterates through each key-value pair
 * 13. for-in                  : iterates through the map using a loop
 * 14. map                     : transforms each key-value pair
 * 15. update(key, function)   : updates the value of a specific key
 * 16. updateAll(function)     : updates all values in the map
 * 17. isEmpty                 : true if the map has no elements
 * 18. isNotEmpty              : true if the map has at least one element
 * 19. runtimeType             : returns the type of the map at runtime
 */
/**
 * Map : is a collection in dart that store data as key value pair. It mostly used with API Fetching (with factory)
 */
void main() {
  // Part 1 : Creating and Adding
  Map<String, dynamic> person1 = {
    "name": "Sokchea",
    "age": 21,
    "address": "Kandal",
  };
  print(person1['name']);
  print(person1);

  person1.addAll({'score': 100, 'status': 'single'});
  print(person1);

  person1.putIfAbsent(
    "status",
    () => "Taken",
  ); // put the key if the key does not exist
  print(person1);
}
