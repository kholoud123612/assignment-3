import 'dart:io';

void main() {
  List<int> scores = [0, 0, 0, 0];

  for (int i = 0; i < scores.length; i++) {
    scores[i] = int.parse(stdin.readLineSync()!);
  }

  assignGrades(scores);
}

void assignGrades(List<int> scores) {
  int bestScore = scores[0];

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] > bestScore) {
      bestScore = scores[i];
    }
  }

  for (int i = 0; i < scores.length; i++) {
    String grade;

    if (scores[i] >= bestScore - 10) {
      grade = 'A';
    } else if (scores[i] >= bestScore - 20) {
      grade = 'B';
    } else if (scores[i] >= bestScore - 30) {
      grade = 'C';
    } else if (scores[i] >= bestScore - 40) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    print("Student ${i + 1} score is ${scores[i]} and grade is $grade");
  }
}