import 'dart:io';

import 'game.dart';

void main() {
  var game = Game();
  GuessResult? guessResult;
  do {
    var input = stdin.readLineSync();

    if (input == null) {
      return;
    }

    var guess = int.tryParse(input);

    if (guess == null) {
      continue;
    }

    guessResult = game.doGuess(guess);

    if (guessResult == GuessResult.correct ) {
      print('Correct! ❤ The answer is $guess ' + 'Total guess: ${game.Totalguess}');
    } else if (guessResult == GuessResult.toohigh) {
      print('TOO HIGH ▲');
    } else {
      print('TOO LOW ▼');
    }
  }while(guessResult != GuessResult.correct);
}
