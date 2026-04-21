// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iap_helper_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(IapHelperNotifier)
final iapHelperProvider = IapHelperNotifierProvider._();

final class IapHelperNotifierProvider
    extends $AsyncNotifierProvider<IapHelperNotifier, IAPHelper> {
  IapHelperNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'iapHelperProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$iapHelperNotifierHash();

  @$internal
  @override
  IapHelperNotifier create() => IapHelperNotifier();
}

String _$iapHelperNotifierHash() => r'ebf3f9fbeef1b30453380f3f3a4fc39e4e9e9ae2';

abstract class _$IapHelperNotifier extends $AsyncNotifier<IAPHelper> {
  FutureOr<IAPHelper> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<IAPHelper>, IAPHelper>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<IAPHelper>, IAPHelper>,
              AsyncValue<IAPHelper>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
