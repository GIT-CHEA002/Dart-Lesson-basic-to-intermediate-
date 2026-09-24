/**
 * Null safety is a methods in dart ,
 * used to set value to variable in order make them to not storing the null value .
 * It prevent rum time error 
 */
/**
 * Type of null safety
 * 1. nullable type : variable that can be null. String? name;
 * 2. safe access : access the properties only if not null. other wise return null. products?.length;
 * 3. default value : use fallback value if the variable if null. name ?? "sokchea";
 * 4. null assignment : assign value only when the current value is null. points ?? = 0;
 * 5. null assertion : tell dart, the varible is not null here. throw an error if wrong. gender!
 * 6. late keyword : declare variable to be initailize later, promise it will be assigned before use. late String name;
 * 7. required keyword : force caller to provide the value for a parameter. required String  message;
 */
void main() {
  // 1. nullable type
  String? name; // tell dart : the name here can be null
  print(name);
  double? price;
  print(price);
  price = 10.2;
  print(price);

  
}
