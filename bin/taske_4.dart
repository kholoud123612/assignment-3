import 'dart:io';

int CalculateEven(List<int> numbers) {
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      sum += numbers[i];
    }
  }

  return sum;
}

void main() {
  List<int> numbers = [];


  for (int i = 0; i < 6; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  print(" ${CalculateEven(numbers)}");
}