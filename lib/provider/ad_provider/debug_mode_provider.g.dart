// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_mode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(isDebug)
final isDebugProvider = IsDebugProvider._();

final class IsDebugProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsDebugProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isDebugProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isDebugHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isDebug(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isDebugHash() => r'fd296c26846261118324cb14ba7223cb833b599c';
