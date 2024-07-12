
import 'package:bit_math/global_key/navigator_key.dart';
import 'package:bit_math/provider/toast_provider/toast_status.dart';
import 'package:bit_math/utils/screen_size.dart';
import 'package:bit_math/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'toast_provider.g.dart';


@riverpod
class ToastNotifier extends _$ToastNotifier {
  @override
  FutureOr<FToast> build() async{
    final fToast = FToast();
    fToast.init(navigatorKey.currentContext!);
    return fToast;
  }

  Future<void> showBuilderToast(ToastStatus status) async{
    final previousState = await future;
    previousState.removeCustomToast();
    Widget? toast;
    Duration duration = const Duration();
    toast = toastWidget(status);
    if (status is InitialToast) {
      duration = const Duration(seconds: 5);
    } else if (status is CorrectToast) {
      duration = const Duration(milliseconds: 750);
    } else if (status is StreakToast) {
      duration = const Duration(milliseconds: 1250);
    } else if (status is FailedToast) {
      duration = const Duration(milliseconds: 1250);
    } else if (status is EnemyToast) {
      duration = const Duration(milliseconds: 750);
    } else if (status is TimerToast) {
      duration = const Duration(milliseconds: 750);
    } else if (status is HealToast) {
      duration = const Duration(milliseconds: 750);
    } else if (status is RemovedAdToast) {
      duration = const Duration(milliseconds: 1250);
    } else if(status is MaxStreakToast){
      duration = const Duration(milliseconds: 1250);
    }else{
      print('Unknown Toast Status');
    }
    if(toast==null) return;
    previousState.showToast(
        child: toast,
        gravity: ToastGravity.NONE,
        toastDuration: duration,
        positionedToastBuilder: (context, child) {
          return Positioned(
            top: getPaddingHeight(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height)+16,
            left: 16.0,
            right: 16.0,
            child:child,
          );
        }
        );
  }
}
//TODO: MaterialApp内(navigatorKey.currentState!=null)でref.watchでeager initalization