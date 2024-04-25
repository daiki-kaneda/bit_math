import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/helper/save_data_helper.dart';
import 'package:bit_math/utils/screen_size.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight
  ]);
  final preference = await SharedPreferences.getInstance();
  final saveDataHelper = SaveDataHelper(preference);
  await saveDataHelper.loadData();
  runApp(
    MaterialApp(
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
            child: Center(
              child: Container(
              color: Colors.blue,
              height: 50,
              width: 320,
            ),
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
    )
  );
}


