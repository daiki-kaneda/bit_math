
import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/helper/app_state_manager.dart';
import 'package:bit_math/helper/data_repository.dart';
import 'package:bit_math/helper/iap_manager.dart';
import 'package:bit_math/helper/save_data_helper.dart';
import 'package:bit_math/widgets/banner_ad_widget.dart';
import 'package:bit_math/utils/screen_size.dart';
import 'package:bit_math/widgets/dialog_button/dialog_button.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget{

  const MyApp({
    super.key,
    required this.saveDataHelper,
    required this.backendDataRepository,
    required this.appStateManager,
    required this.inAppPurchaseManager});

  final SaveDataHelper saveDataHelper;
  final BackendDataRepository backendDataRepository;
  final AppStateManager appStateManager;
  final InAppPurchaseManager inAppPurchaseManager;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor:const Color.fromRGBO(71, 45, 60,1))),
      home: Scaffold(
        backgroundColor:Colors.black ,
        body: //SafeArea(child: 
      LayoutBuilder(
        builder:(context, constraints) {
          log('width:${constraints.biggest.width}');
          log('height:${constraints.biggest.height}');
          return Column(
        children: [
          Stack(
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
          if(saveDataHelper.iapData.isRemovedAd!=true)
          Align(
            alignment: Alignment.bottomRight,
            child: 
            Padding(padding: const EdgeInsets.only(top: 10,right: 10),
            child: DialogButton(
              context: context, 
              title: 'remove ad?', 
              subtitle: '', 
              icon: const Icon(Icons.close), 
              primaryLabel: 'restore', 
              secondaryLabel: 'yes', 
              tertiaryLabel: 'no',
              primaryAction: (){
                inAppPurchaseManager.restorePurchases();
                 Navigator.pop(context);
              }, 
              secondaryAction: (){
                inAppPurchaseManager.purchase(PurchaseItem.removeAd);
                Navigator.pop(context);
              },
              tertiaryAction: () {
                Navigator.pop(context);
              },) ,)
              )
            ],
          ),
          
          Expanded(
            child: GameWidget(game: BitmanMath(
              saveData: saveDataHelper,
              backendData: backendDataRepository,
              appStateManager: appStateManager,)),
          )
          
        ],
      );
        },)
    //)
    ),
    );
  }
}