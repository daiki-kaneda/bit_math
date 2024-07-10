

// not persisitent data
// but shared data in whole game
import 'package:bit_math/models/prob_data.dart';

class GameState {
  static const int aligatorLimit = 10;

  int score;
  int numbersOfAligator;
  int numSolveAdd;
  int numSolveSub;
  int numSolveMul;
  int numSolveDiv;
  int currentStreak;
  int maxStreak;
  int numSolved;
  ProbData? currentProbData;

  GameState({
    this.score = 0,
    this.numbersOfAligator = 0,
    this.numSolveAdd = 0,
    this.numSolveSub = 0,
    this.numSolveMul = 0,
    this.numSolveDiv = 0,
    this.currentStreak = 0,
    this.maxStreak=0,
    this.numSolved = 0,
    this.currentProbData,
  });

  GameState copyWith({
    int? score,
    int? numbersOfAligator,
    int? numSolveAdd,
    int? numSolveSub,
    int? numSolveMul,
    int? numSolveDiv,
    int? currentStreak,
    int? maxStreak,
    int? numSolved,
    ProbData? currentProbData,
  }) {
    return GameState(
      score: score ?? this.score,
      numbersOfAligator: numbersOfAligator ?? this.numbersOfAligator,
      numSolveAdd: numSolveAdd ?? this.numSolveAdd,
      numSolveSub: numSolveSub ?? this.numSolveSub,
      numSolveMul: numSolveMul ?? this.numSolveMul,
      numSolveDiv: numSolveDiv ?? this.numSolveDiv,
      currentStreak: currentStreak ?? this.currentStreak,
      maxStreak: maxStreak ?? this.maxStreak,
      numSolved: numSolved ?? this.numSolved,
      currentProbData: currentProbData ?? this.currentProbData,
    );
  }

  void reset() {
    score = 0;
    numbersOfAligator = 0;
    numSolveAdd = 0;
    numSolveSub = 0;
    numSolveMul = 0;
    numSolveDiv = 0;
    currentStreak = 0;
    numSolved = 0;
    currentProbData = null;
  }

  int get level {
    if (score < 1000) {
      return 1;
    } else if (score < 3000) {
      return 2;
    } else if (score < 10000) {
      return 3;
    } else if (score < 50000) {
      return 4;
    } else if (score < 100000) {
      return 5;
    } else {
      return 5;
    }
  }

  int get time {
    if (level < 2) {
      return 10;
    } else if (level < 3) {
      return 9;
    } else if (level < 4) {
      return 8;
    } else if (level < 5) {
      return 7;
    } else {
      return 6;
    }
  }
}