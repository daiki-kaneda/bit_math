import 'package:bit_math/global_key/navigator_key.dart';
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

  Future<void> showBuilderToast() async{
    // Fluttertoast.showToast(
    //     msg: "This is Center Short Toast",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // );
    final previousState = await future;
    previousState.showToast(
        child: toast,
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Positioned(
            child: child,
            top: 16.0,
            left: 16.0,
          );
        });
  }
}
//TODO: MaterialApp内(navigatorKey.currentState!=null)でref.watchでeager initalization