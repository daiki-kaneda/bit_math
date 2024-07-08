
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'showing_ad_provider.g.dart';

@riverpod
class ShowingAdNotifier extends _$ShowingAdNotifier {
  @override
  bool build() {
    return false;
  }

  disableAd(){
    state = false;
  }
  enableAd(){
    state = true;
  }
}