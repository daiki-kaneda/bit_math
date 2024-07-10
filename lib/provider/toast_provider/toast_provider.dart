import 'dart:convert';

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
    late Widget toast;
    if(status is CorrectToast){
      toast = const ToastWidget(
        color: Colors.greenAccent,
        icon: Icons.check,
        iconTextPadding: 0,);
    }else if(status is FailedToast){
      toast = const ToastWidget(
        color: Colors.redAccent,
        icon: Icons.close,
        iconTextPadding: 0,);
    }
    previousState.showToast(
        child: toast,
        gravity: ToastGravity.NONE,
        toastDuration: const Duration(milliseconds: 800),
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