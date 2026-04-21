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

String _$bannerAdNotifierHash() => r'8ca79d0ee2a95094d1bdc82af5ece8269ea7ce3a';

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
