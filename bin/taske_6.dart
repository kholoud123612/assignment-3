import 'dart:io';

void main() {
  List<int> scores = [0, 0, 0, 0];

  for (int i = 0; i < scores.length; i++) {
    scores[i] = int.parse(stdin.readLineSync()!);
  }

  analyzeScores(scores);
}

void analyzeScores(List<int> scores) {
  double sum = 0;

  for (int i = 0; i < scores.length; i++) {
    sum += scores[i];
  }

  double average = sum / scores.length;

  int above = 0;
  int below = 0;
  int equal = 0;

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] > average) {
      above++;
    } else if (scores[i] < average) {
      below++;
    } else {
      equal++;
    }
  }

  print("Above average: $above");
  print("Below average: $below");
  print("Equal average: $equal");
}