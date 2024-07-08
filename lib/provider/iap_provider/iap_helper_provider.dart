import 'package:bit_math/provider/iap_provider/iap_helper.dart';
import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'iap_helper_provider.g.dart';

@riverpod
FutureOr<IAPHelper> iapHelper(IapHelperRef ref) async{
  final saveDataHelper = await ref.read(saveDataNotifierProvider.future);
  final helper = IAPHelper(saveDataHelper);
  await helper.init();
  return helper;
}