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
      content: const Text(
        'This is test snack bar!',
        style: TextStyle(
          color: Colors.white
        ),),
        )
  );
}

  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.greenAccent,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.check),
        // SizedBox(
        //   width: 12.0,
        // ),
        // Text("This is a Custom Toast"),
      ],
    ),
  );
Future<void> showToast()async{

  // fToa .showToast(
  //     child: toast,
  //     gravity: ToastGravity.BOTTOM,
  //     toastDuration: Duration(seconds: 2),
  //   );

}

class ToastWidget extends StatelessWidget {
  const ToastWidget({
    super.key,
    required this.color,
    this.icon,
    this.text,
    this.iconTextPadding});

  final Color color;
  final IconData? icon;
  final String? text;
  final double? iconTextPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(71, 45, 60, 1)),
      borderRadius: BorderRadius.circular(25.0),
      color: color,
      shape: BoxShape.rectangle
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if(icon!=null) 
        Icon(icon),
        SizedBox(
          width: iconTextPadding ?? 12.0,
        ),
        if(text!=null)
        Text(text!),
      ],
    ),
  );
  }
}