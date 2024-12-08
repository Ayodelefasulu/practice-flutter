// ignore_for_file: avoid_print

void main() {
  //Object value = 42;
  //value = "HAE"; // Works because both String and int are subtypes of Object
  //print(value.toString()); // Safe to call toString(), available on Object
  dynamic value = 'Hello';
  value = 42; // Works because dynamic can hold any type 
  print(value.toString());
}
