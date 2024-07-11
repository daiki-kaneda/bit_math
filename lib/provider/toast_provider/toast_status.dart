/*
 - correct icon(green check icon)
 - failed message(red close icon & correct answer text)
 - solved 10problem,25problem,50problem,100problem,200problem,500problem 1000problem massage
 - 10streak,20streak,30streak,40streak... message

*/

import 'package:bit_math/models/prob_data.dart';

abstract class ToastStatus{
  const ToastStatus();
}

class InitialToast extends ToastStatus{
}

class CorrectToast extends ToastStatus{
}

class StreakToast extends ToastStatus{
  const StreakToast(this.streak);

  final int streak;
}

// class NumSolvedToast extends ToastStatus{
//   const NumSolvedToast(this.numSolved);
  
//   final int numSolved;
// }

class FailedToast extends ToastStatus{
  const FailedToast(this.probData);
  final ProbData? probData;
}

class EnemyToast extends ToastStatus{

}

class TimerToast extends ToastStatus{

}

class HealToast extends ToastStatus{

}

class RemovedAdToast extends ToastStatus{

}

class MaxStreakToast extends ToastStatus{
  const MaxStreakToast(this.maxStreak);
  final int maxStreak;
}