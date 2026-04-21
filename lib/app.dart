import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/global_key/game_widget_key.dart';
import 'package:bit_math/global_key/navigator_key.dart';
import 'package:bit_math/global_key/scaffold_key.dart';
import 'package:bit_math/global_key/scaffold_messanger_key.dart';
import 'package:bit_math/provider/toast_provider/toast_provider.dart';
import 'package:bit_math/widgets/banner_ad_widget.dart';
import 'package:bit_math/utils/screen_size.dart';
import 'package:bit_math/widgets/dialog_button/remove_ad_button.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bit_math/l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorKey: navigatorKey,
      builder: FToastBuilder(),
      scaffoldMessengerKey: scaffoldMessangerKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(71, 45, 60, 1))),
      home: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          body: //SafeArea(child:
              LayoutBuilder(
            builder: (context, constraints) {
              log('width:${constraints.biggest.width}');
              log('height:${constraints.biggest.height}');
              return Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: SizedBox(
                            width: 320,
                            height: 50 +
                                getPaddingHeight(constraints.biggest.width,
                                    constraints.biggest.height - 50),
                            child: const Center(child: BannerAdWidget())),
                      ),
                      const RemoveAdButton(),
                      // if(saveDataHelper.iapData.isRemovedAd!=true)
                      // Align(
                      //   alignment: Alignment.bottomRight,
                      //   child:
                      //   Padding(padding: const EdgeInsets.only(top: 10,right: 10),
                      //   child: DialogButton(
                      //     context: context,
                      //     title: 'remove ad?',
                      //     subtitle: '',
                      //     icon: const Icon(Icons.close),
                      //     primaryLabel: 'restore',
                      //     secondaryLabel: 'yes',
                      //     tertiaryLabel: 'no',
                      //     primaryAction: (){
                      //       inAppPurchaseManager.restorePurchases();
                      //        Navigator.pop(context);
                      //     },
                      //     secondaryAction: (){
                      //       inAppPurchaseManager.purchase(PurchaseItem.removeAd);
                      //       Navigator.pop(context);
                      //     },
                      //     tertiaryAction: () {
                      //       Navigator.pop(context);
                      //     },) ,)
                      //     )
                    ],
                  ),
                  Expanded(
                    child: ToastProviderInitialization(
                      RiverpodAwareGameWidget(
                              key: gameWidgetKey, game: BitmanMath())
                    ),
                  )
                ],
              );
            },
          )
          //)
          ),
    );
  }
}

class ToastProviderInitialization extends ConsumerWidget {
  const ToastProviderInitialization(this.child,{super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(toastProvider);
    return child;
  }
}
