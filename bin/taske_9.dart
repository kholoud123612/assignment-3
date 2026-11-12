
import 'dart:io';

void CountGeneral(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    int count = 0;
    bool foundBefore = false;

    for (int j = 0; j < i; j++) {
      if (numbers[i] == numbers[j]) {
        foundBefore = true;
        break;
      }
    }

    if (!foundBefore) {
      for (int j = 0; j < numbers.length; j++) {
        if (numbers[i] == numbers[j]) {
          count++;
        }
      }

      print('${numbers[i]} -> $count');
    }
  }
}

void main() {
  List<int> numbers = [];


  for (int i = 0; i < 6; i++) {
    int n = int.parse(stdin.readLineSync()!);
    numbers.add(n);
  }

  CountGeneral(numbers);
}