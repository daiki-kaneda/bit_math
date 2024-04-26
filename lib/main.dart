import 'dart:developer';

import 'package:bit_math/app.dart';
import 'package:bit_math/game.dart';
import 'package:bit_math/helper/ad_helper.dart';
import 'package:bit_math/helper/save_data_helper.dart';
import 'package:bit_math/utils/screen_size.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight
  ]);
  final preference = await SharedPreferences.getInstance();
  final saveDataHelper = SaveDataHelper(preference);
  await saveDataHelper.loadData();

  final adHelper = AdHelper(isDebug: true);
  await adHelper.init();

  runApp(
    ChangeNotifierProvider(
      create: (_)=>adHelper,
      child: MyApp(saveDataHelper: saveDataHelper,),)
  );
}


