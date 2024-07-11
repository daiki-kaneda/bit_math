import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:in_app_review/in_app_review.dart';

part 'iar_provider.g.dart';

@riverpod
class InAppReviewNotifier extends _$InAppReviewNotifier {
  @override
  InAppReview build() {
    return InAppReview.instance;
  }

  Future<void> requestReview()async{
    final isRequested = (await ref.read(saveDataNotifierProvider.future)).setting.reviewRequested;
    if (!isRequested&&await state.isAvailable()) {
    print('request review');
    state.requestReview();
    ref.read(saveDataNotifierProvider.notifier)
    .reviewRequestDone();
}
  }
}