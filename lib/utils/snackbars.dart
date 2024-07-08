import 'package:bit_math/global_key/scaffold_messanger_key.dart';
import 'package:flutter/material.dart';

enum SnackBarStatus{
  bestScoreUpdate,
  adAlreadyRemoved,
  adRemoveCompleted;
}

Future<void> showSnackBar(SnackBarStatus status)async{
  scaffoldMessangerKey.currentState?.showSnackBar(
     SnackBar(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      backgroundColor:const Color.fromRGBO(71, 45, 60,1),
      content: Text(
        'This is test snack bar!',
        style: TextStyle(
          color: Colors.white
        ),),
        )
  );
}