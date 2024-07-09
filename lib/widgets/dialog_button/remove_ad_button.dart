
import 'package:bit_math/provider/ad_provider/removed_ad_provider.dart';
import 'package:bit_math/provider/iap_provider/iap_helper.dart';
import 'package:bit_math/provider/iap_provider/iap_helper_provider.dart';
import 'package:bit_math/widgets/dialog_button/dialog_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RemoveAdButton extends ConsumerWidget{

  const RemoveAdButton({
    super.key,});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final removedAd = ref.watch(removedAdNotifierProvider);
    // final iapHelper = ref.watch(iapHelperNotifierProvider);

    if(removedAd.hasValue
    &&removedAd.value!=true){
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
               ref.read(iapHelperNotifierProvider.notifier).restore();
                 Navigator.pop(context);
              }, 
              secondaryAction: (){
                ref.read(iapHelperNotifierProvider.notifier).purchase(PurchaseItem.removeAd);
                Navigator.pop(context);
              },
              tertiaryAction: () {
                Navigator.pop(context);
              },) ,)
              );
    }else{
      return const SizedBox();
    }
    
  }
}