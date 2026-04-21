// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iar_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InAppReviewNotifier)
final inAppReviewProvider = InAppReviewNotifierProvider._();

final class InAppReviewNotifierProvider
    extends $NotifierProvider<InAppReviewNotifier, InAppReview> {
  InAppReviewNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inAppReviewProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inAppReviewNotifierHash();

  @$internal
  @override
  InAppReviewNotifier create() => InAppReviewNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InAppReview value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InAppReview>(value),
    );
  }
}

String _$inAppReviewNotifierHash() =>
    r'ae8d2cdfd76877c3374f6c7740d2067c10be2fd6';

abstract class _$InAppReviewNotifier extends $Notifier<InAppReview> {
  InAppReview build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<InAppReview, InAppReview>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<InAppReview, InAppReview>,
              InAppReview,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
