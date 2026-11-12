import 'dart:io';
int getSecondSmallest(List<int> numbers){
  int min = numbers[0];
  int secondMin = numbers[1];
  if (secondMin < min){
    int temp = min;
    min = secondMin;
    secondMin = temp;
  }
  for (int i=2; i < numbers.length; i++){
    if (numbers[i]<min){
      secondMin = min;
      min = numbers[i];
    }else if (numbers[i] < secondMin){
      secondMin = numbers[i];
    }
  }
  return secondMin;
}
void main(){
  List<int> numbers = [];
  for (int i = 0 ; i<6; i++){
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);

  }
  print(getSecondSmallest(numbers));
}