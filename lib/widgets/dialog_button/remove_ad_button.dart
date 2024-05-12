
import 'package:bit_math/helper/app_state_manager.dart';
import 'package:bit_math/helper/iap_manager.dart';
import 'package:bit_math/widgets/dialog_button/dialog_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RemoveAdButton extends StatelessWidget{

  RemoveAdButton({
    super.key,
    required this.inAppPurchaseManager});
  final InAppPurchaseManager inAppPurchaseManager;
  @override
  Widget build(BuildContext context) {
    final alreadyRemovedAd = context.select<AppStateManager,bool>(
      (value) => value.saveDataHelper.iapData.isRemovedAd == true
      );
    if(alreadyRemovedAd){
        return const SizedBox(width: 0,height: 0,);
      }else{
        return Align(
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
              );
      }
    
  }
}