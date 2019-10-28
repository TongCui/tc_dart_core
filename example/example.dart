import 'package:tc_dart_core/tc_dart_core.dart';


void main() {
  const wordings = 'Hello word!';

  // normal print
  print(wordings);

  // colorized string
  print(ColorStr.red(wordings));
  print(ColorStr.cyan(wordings));
  print(ColorStr.black(wordings));
  print(ColorStr.yellow(wordings));
  print(ColorStr.green(wordings));

  //  print object
  final aPerson  = Person();
  print(aPerson.toString());
  print(ColorStr.red(aPerson));

}

class Person {
  int age = 22;
  String name = 'tcui';

  @override
  String toString() {
    return 'My name is $name, and I\'m $age years old.';
  }
}
