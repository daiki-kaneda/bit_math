import 'dart:developer';

import 'package:bit_math/app.dart';
import 'package:bit_math/helper/ad_helper.dart';
import 'package:bit_math/helper/app_state_manager.dart';
import 'package:bit_math/helper/data_repository.dart';
import 'package:bit_math/helper/save_data_helper.dart';
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

  final appStateManager = AppStateManager();

  final dataRepository = BackendDataRepository(saveDataHelper);
  await dataRepository.init();

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>adHelper),
      ChangeNotifierProvider(create: (_)=>appStateManager),
    ],
    child: MyApp(saveDataHelper: saveDataHelper, backendDataRepository: dataRepository),)
  );
}


