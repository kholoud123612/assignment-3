import 'dart:io';
void reverseArray(List<int>numbers){
  for(int i = numbers.length -1 ; i >= 0; i--){
    print(numbers[i]);

  }
}
void main(){
  List<int> numbers =[];
  for (int i=0; i < 10 ; i++){
    int num =int.parse(stdin.readLineSync()!);
    numbers .add(num);
  }
  reverseArray(numbers);
}