import 'dart:io';

void SelectionSort(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    int minIndex = i;

    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }

  print("$arr");
}

void main() {
  List<int> numbers = [];

  for (int i = 0; i < 6; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  SelectionSort(numbers);
}