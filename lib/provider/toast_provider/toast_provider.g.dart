// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toast_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ToastNotifier)
final toastProvider = ToastNotifierProvider._();

final class ToastNotifierProvider
    extends $AsyncNotifierProvider<ToastNotifier, FToast> {
  ToastNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toastProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toastNotifierHash();

  @$internal
  @override
  ToastNotifier create() => ToastNotifier();
}

String _$toastNotifierHash() => r'0c8699c2be9319f2c84dbfea73b9c4a04441f879';

abstract class _$ToastNotifier extends $AsyncNotifier<FToast> {
  FutureOr<FToast> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<FToast>, FToast>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FToast>, FToast>,
              AsyncValue<FToast>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
