import 'dart:io';

void main(List<String> args) {
  print("Part 1:");
  int value = 5;
  if (value % 2 == 0) {
    print("Even");
  } else {print("Odd");
  }

  print("Part 2:");
  bool isVowelCharacter = false;
  String character = 'P';
  const vowelSet = ['a', 'e', 'i', 'o', 'u'];
  vowelSet.forEach((v) => isVowelCharacter = character.toLowerCase() == v ? true : false);

  if (RegExp(r'^[a-zA-Z]$').hasMatch(character)) {
    isVowelCharacter = vowelSet.contains(character) ? true : false;
    print(isVowelCharacter ? "Vowel" : "Consonant");
  } else {
    print("Not a valid letter");
  }

  print("Part 3:");
  if (value > 0) {
    print("Positive");
  } else if (value < 0) {
    print("Negative");
  } else {
    print("Zero");
  }

  print("Part 4:");
  for (int i = 1; i <= 100; i++) {
    print("$i saltanat");
  }

  print("Part 5:");
  List<double> numbers = [5, 2.8, -2, 8, 2];
  int sumTotal = 0;
  numbers.forEach(
      (num) {if (num > 0 && (num % num.floor() == 0)) sumTotal += num.floor();});
  print("Sum: $sumTotal");

  print("Part 6:");
  for (int i = 1; i <= 10; i++) {
    print("5 * $i = ${5 * i}");
  }

  print("Part 7:");
  for (int i = 1; i <= 9; i++) {
    print("Multiplication Table for $i");
    for (int j = 1; j <= 10; j++) {
      print("$i * $j = ${i * j}");
    }
    print("");
  }

  print("Part 8: Simple Calculator");
  print("Operations: +, -, *, /");
  bool inputValid = false;
  stdout.write("Enter first value: ");
  double? firstValue;
  while (!inputValid) {
    try {
      firstValue = double.parse(stdin.readLineSync()!);
      inputValid = true;
    } catch (e) {
      print("Invalid input, please enter a number");
    }
  }

  print("Enter an operation symbol: ");
  List<String> operators = ['*', '/', '+', '-'];
  bool validOperator = false;
  String? operationSymbol;
  while (!validOperator) {
    operationSymbol = stdin.readLineSync();
    if (operators.contains(operationSymbol)) {
      validOperator = true;
    } else {
      print("Invalid symbol, try again");
    }
  }

  inputValid = false;
  double? secondValue;
  stdout.write("Enter second value: ");
  while (!inputValid) {
    try {
      secondValue = double.parse(stdin.readLineSync()!);
      inputValid = true;
    } catch (e) {
      print("Invalid input, please enter a number");
    }
  }

  double result = 0;
  switch (operationSymbol) {
    case '-':
      result = firstValue! - secondValue!;
      break;
    case '*':
      result = firstValue! * secondValue!;
      break;
    case '/':
      result = firstValue! / secondValue!;
      break;
    case '+':
      result = firstValue! + secondValue!;
      break;
  }
  print(result);

  print("Part 9:");
  for (int i = 1; i <= 100; i++) {
    if (i != 41) {
      print(i);
    }
  }
}
