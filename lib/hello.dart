import 'Dart:math';
import 'Dart:io';

void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;
  int? guess;
  var check = false;
  var count = 0;
  while (check == false) {
    stdout.write('Guess the number between 1 and 100:');
    var input = stdin.readLineSync();
    count++;

    if (input == null) {
      print('Error, input is NULL');
      return;
    }

    var guess = int.tryParse(input);

    if (guess == null) {
      print('Input error, Plaese enter numbers only');
      return;
    }

    if (guess == answer) {
      print('Correct! ❤ The answer is $answer ' + 'Total guess: $count');
      check = true;
    } else if (guess > answer) {
      print('TOO HIGH ▲');
    } else {
      print('TOO LOW ▼');
    }
  }
}
