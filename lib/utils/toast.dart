import 'package:bit_math/global_key/scaffold_key.dart';
import 'package:bit_math/global_key/scaffold_messanger_key.dart';
import 'package:bit_math/provider/toast_provider/toast_status.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:bit_math/l10n/app_localizations.dart';

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
    child: const Row(
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
    this.iconTextPadding,
    this.sprite});

  final Color color;
  final IconData? icon;
  final Widget? text;
  final double? iconTextPadding;
  final Widget? sprite;

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(71, 45, 60, 1)),
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
        if(sprite!=null)
        sprite!,
        if(text!=null)
        text!,
      ],
    ),
  );
  }
}

Widget? toastWidget(ToastStatus status){
  if(status is InitialToast){
    return ToastWidget(
        color: Colors.blueAccent,
        icon: Icons.help,
        text: Text(
           AppLocalizations.of(scaffoldKey.currentContext!)!.initialToast,
          style: const TextStyle(color: Colors.white),),
        iconTextPadding: 12.0,);
  }else if(status is CorrectToast){
    return const ToastWidget(
        color: Colors.greenAccent,
        icon: Icons.check,
        iconTextPadding: 0,);
  }else if(status is StreakToast){
    return ToastWidget(
        color: Colors.greenAccent,
        icon: Icons.check,
        iconTextPadding: 12.0,
        text: Text.rich(TextSpan(
          children: [
            TextSpan(
              text: status.streak.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold)),
            TextSpan(
              text: AppLocalizations.of(scaffoldKey.currentContext!)!.streakToast,
              style: const TextStyle(color: Colors.black))
          ]
        )),);
  }else if(status is FailedToast){
    return ToastWidget(
        color: Colors.redAccent,
        icon: Icons.close,
        iconTextPadding: status.probData==null ? 0.0:12.0,
        text:status.probData?.buildColoredAnswerText(),);
  }else if(status is TimerToast){
    final timer = getSprite(SpriteSheets.coloredTransparentPacked, 675, 194, 10, 12);
    return ToastWidget(
        color: Colors.redAccent,
        sprite: SpriteWidget(sprite:timer),
        iconTextPadding: 0,);
  }else if(status is EnemyToast){
    final enemy = getSprite(SpriteSheets.coloredTransparentPacked, 465, 129, 14, 14);
    return ToastWidget(
        color: Colors.redAccent,
        sprite: SpriteWidget(sprite:enemy),
        iconTextPadding: 0,);
  }else if(status is HealToast){
    final healItem = getSprite(SpriteSheets.coloredTransparentPacked, 531, 290, 10, 12);
    return ToastWidget(
        color: Colors.greenAccent,
        sprite: SpriteWidget(sprite:healItem),
        iconTextPadding: 0,);

  }else if(status is RemovedAdToast){
    return ToastWidget(
        color: Colors.greenAccent,
        icon: Icons.check,
        text: Text.rich(TextSpan(
          children: [
            TextSpan(
              text: AppLocalizations.of(scaffoldKey.currentContext!)!.removedAdToast,
              style: const TextStyle(color: Colors.black)),
          ]
        ))
          ,
        iconTextPadding: 12.0,);

  }else if(status is MaxStreakToast){
    return ToastWidget(
        color: Colors.blueAccent,
        icon: Icons.description,
        text: Text.rich(TextSpan(
          children: [
            TextSpan(
              text: '${AppLocalizations.of(scaffoldKey.currentContext!)!.maxStreakToast} ',
              style: const TextStyle(color: Colors.black)),
            TextSpan(
              text: status.maxStreak.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold)),
            const TextSpan(
              text: '!',
              style: TextStyle(color: Colors.black))
          ]
        ))
          ,
        iconTextPadding: 12.0,);
  }
  return null;
}