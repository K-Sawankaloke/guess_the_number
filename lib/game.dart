import 'dart:math';

enum GuessResult{
  correct,toohigh,toolow;
}

class Game {
  final int answer = Random().nextInt(100) + 1;
  int _totalGuesses = 0;

  game() {
    print('Answer is $answer');
  }


 GuessResult doGuess(int guess) {
    _totalGuesses++;

    if (guess == answer) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.toohigh;
    } else {
      return GuessResult.toolow;
    }
  }

  int get Totalguess{
    return _totalGuesses;
  }
}
