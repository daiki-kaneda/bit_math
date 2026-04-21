// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'showing_ad_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShowingAdNotifier)
final showingAdProvider = ShowingAdNotifierProvider._();

final class ShowingAdNotifierProvider
    extends $NotifierProvider<ShowingAdNotifier, bool> {
  ShowingAdNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'showingAdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$showingAdNotifierHash();

  @$internal
  @override
  ShowingAdNotifier create() => ShowingAdNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$showingAdNotifierHash() => r'66e1351ba61658648c35bfb99fcb92b4e971b204';

abstract class _$ShowingAdNotifier extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
