// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_ad_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BannerAdNotifier)
final bannerAdProvider = BannerAdNotifierProvider._();

final class BannerAdNotifierProvider
    extends $AsyncNotifierProvider<BannerAdNotifier, BannerAd?> {
  BannerAdNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bannerAdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bannerAdNotifierHash();

  @$internal
  @override
  BannerAdNotifier create() => BannerAdNotifier();
}

String _$bannerAdNotifierHash() => r'558ea24060ff4920e0145868ee9a2876ab52ed88';

abstract class _$BannerAdNotifier extends $AsyncNotifier<BannerAd?> {
  FutureOr<BannerAd?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<BannerAd?>, BannerAd?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<BannerAd?>, BannerAd?>,
              AsyncValue<BannerAd?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
