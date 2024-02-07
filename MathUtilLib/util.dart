// Building a math utility library in Dart.
// Create a class MathUtils with static methods to perform common mathematical operations such as
//      finding the square root
//      calculating the factorial
//      computing the power of a number.
// Demonstrate the usage of the static keyword to access these methods without creating an instance of the class.

import 'dart:io';
import 'dart:math';

void main() {
  bool flag = true;
  while (flag) {
    // MENU
    print("1. Calculate square root");
    print("2. Calculate factorial");
    print("3. Calculate power of a number");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    dynamic choice = stdin.readLineSync();
    choice = int.parse(choice);
    print(" ");

    switch (choice) {
      case 1:
        // square root
        stdout.write("Enter a number: ");
        dynamic num = stdin.readLineSync();
        num = int.parse(num);

        print(MathUtils.findSquareRoot(num));
        break;

      case 2:
        // factorial
        stdout.write("Enter a number: ");
        dynamic num = stdin.readLineSync();
        num = int.parse(num);

        print(MathUtils.findFactorial(num));
        break;

      case 3:
        // power of a number
        stdout.write("Enter a number: ");
        dynamic num = stdin.readLineSync();
        num = int.parse(num);

        stdout.write("Enter power: ");
        dynamic power = stdin.readLineSync();
        power = int.parse(power);

        print(MathUtils.findPower(num, power));
        break;

      case 4:
        print("Exiting...");
        flag = false;
    }
  }
}

class MathUtils {
  static findSquareRoot(int num) {
    dynamic result = sqrt(num);
    return result;
  }

  static findFactorial(int num) {
    if (num < 0) {
      throw ArgumentError("Factorial is not there for negative numbers");
    }
    if (num == 0 || num == 1) {
      return 1;
    } else {
      return num * findFactorial(num - 1);
    }
  }

  static findPower(int num, int toPower) {
    return pow(num, toPower);
  }
}
