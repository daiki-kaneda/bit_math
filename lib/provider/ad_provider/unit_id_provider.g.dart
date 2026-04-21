// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(unitId)
final unitIdProvider = UnitIdFamily._();

final class UnitIdProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  UnitIdProvider._({
    required UnitIdFamily super.from,
    required AdStatus super.argument,
  }) : super(
         retry: null,
         name: r'unitIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unitIdHash();

  @override
  String toString() {
    return r'unitIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    final argument = this.argument as AdStatus;
    return unitId(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UnitIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unitIdHash() => r'e28960b1b88992b1ba13391a0a062db3694e91d3';

final class UnitIdFamily extends $Family
    with $FunctionalFamilyOverride<String, AdStatus> {
  UnitIdFamily._()
    : super(
        retry: null,
        name: r'unitIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UnitIdProvider call(AdStatus status) =>
      UnitIdProvider._(argument: status, from: this);

  @override
  String toString() => r'unitIdProvider';
}
