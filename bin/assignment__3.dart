///taske_1
import 'dart:io';
int getMin(List<int> numbers){
  int  min = numbers[0];

  for (int i =1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }
return min;
}
void main(){
  List<int> numbers = [];
  for(int i=0; i<4; i++){
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);

  }
  print(getMin(numbers));
}