
import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget{

  const DialogButton({
    super.key,
    required this.context,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.tertiaryLabel,
    required this.primaryAction,
    required this.secondaryAction,
    required this.tertiaryAction,
  });
  final BuildContext context;
  final String title;
  final String subtitle;
  final Icon icon;
  final String primaryLabel;
  final String secondaryLabel;
  final String tertiaryLabel;
  final void Function() primaryAction;
  final void Function() secondaryAction;
  final void Function() tertiaryAction;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        showDialog(
          context: context, 
          builder:(context) {
            return AlertDialog(
              title: Text(title),
              actions: [
                TextButton(onPressed: tertiaryAction, child: Text(tertiaryLabel)),
                TextButton(onPressed: secondaryAction, child: Text(secondaryLabel)),
                TextButton(onPressed: primaryAction, child: Text(primaryLabel)),
              ],
            );
          },);
      },
      icon: icon);
  }
}