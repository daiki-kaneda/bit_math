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

class CorrectToast extends ToastStatus{

}

class FailedToast extends ToastStatus{
  const FailedToast(this.probData);
  final ProbData? probData;
}