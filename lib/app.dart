
import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/helper/save_data_helper.dart';
import 'package:bit_math/banner_ad_widget.dart';
import 'package:bit_math/utils/screen_size.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  const MyApp({
    super.key,
    required this.saveDataHelper});

  final SaveDataHelper saveDataHelper;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: //SafeArea(child: 
      LayoutBuilder(
        builder:(context, constraints) {
          log('width:${constraints.biggest.width}');
          log('height:${constraints.biggest.height}');
          return Column(
        children: [
          Center(
            child: SizedBox(
            width: 320,
            height:50+getPaddingHeight(
              constraints.biggest.width, constraints.biggest.height-50),
            child: const Center(
              child: BannerAdWidget()
            )
          ),
          ),
          Expanded(
            child: GameWidget(game: BitmanMath(saveData: saveDataHelper)),
          )
        ],
      );
        },)
    //)
    ),
    );
  }
}