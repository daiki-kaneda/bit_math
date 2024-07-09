import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'removed_ad_provider.g.dart';

@riverpod
class RemovedAdNotifier extends _$RemovedAdNotifier {
  @override
  FutureOr<bool> build() async{
    return (await ref.read(saveDataNotifierProvider.future)).setting.removedAd;
  }

  Future<void> removedAd() async{
    final saveData = (await ref.read(saveDataNotifierProvider.future));
    (await ref.read(saveDataNotifierProvider.future)).setting
    = saveData.setting.copyWith(removedAd: true);
    state = const AsyncData(true);
  }
}