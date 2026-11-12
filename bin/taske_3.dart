import 'dart:io';
void containsValue(List<int> numbers , int target){
  for(int i = 0; i< numbers.length; i++){
    if(numbers[i] == target){
      print ("yes");
      return;
    }
  }
  print("No");
}
void main() {
  List<int> numbers =[];
  for(int i =0; i < 4; i++){

    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  print("Enter target :");
  int target = int.parse(stdin.readLineSync()!);
  containsValue(numbers , target);
}