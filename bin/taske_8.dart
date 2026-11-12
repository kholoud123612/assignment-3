import 'dart:io';

void getDistinctNumbers(List<int> numbers) {
  List<int> distinct = [];

  for (int i = 0; i < numbers.length; i++) {
    if (!distinct.contains(numbers[i])) {
      distinct.add(numbers[i]);
    }
  }

  print("The number of distinct numbers is ${distinct.length}");

  print("The distinct numbers are: ${distinct.join(' ')}");
}

void main() {
  List<int> numbers = [];


  for (int i = 0; i < 10; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  getDistinctNumbers(numbers);
}