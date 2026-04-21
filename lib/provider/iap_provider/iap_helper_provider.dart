import 'package:bit_math/provider/ad_provider/removed_ad_provider.dart';
import 'package:bit_math/provider/iap_provider/iap_helper.dart';
import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:bit_math/provider/toast_provider/toast_provider.dart';
import 'package:bit_math/provider/toast_provider/toast_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'iap_helper_provider.g.dart';

@riverpod
class IapHelperNotifier extends _$IapHelperNotifier {
  @override
  FutureOr<IAPHelper> build() async{
  final saveDataHelper = await ref.read(saveDataProvider.future);
  // 購入、購入復元処理は'ref'があると便利なのでコールバックで渡す
  final helper = IAPHelper(
    saveDataHelper,
    purchasedOrRestored: (item)async{
      switch(item){
        case PurchaseItem.removeAd:{
          ref.read(removedAdProvider.notifier)
          .removedAd();
          ref.read(toastProvider.notifier).showBuilderToast(RemovedAdToast());
        }
      }
    });
  await helper.init();
  return helper;
  }

  Future<void> purchase(PurchaseItem item)async{
    final helper = await future;
    helper.purchase(item);
  }

  Future<void> restore()async{
    final helper = await future;
    helper.restorePurchases();
  }
}