import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'removed_ad_provider.g.dart';

@riverpod
FutureOr<bool> removedAd(RemovedAdRef ref) async{
  return (await ref.read(saveDataNotifierProvider.future)).setting.removedAd;
}