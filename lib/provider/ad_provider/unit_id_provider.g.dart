// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$unitIdHash() => r'2306fff6b583073a0caf06cd37eecec4849d2b4d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [unitId].
@ProviderFor(unitId)
const unitIdProvider = UnitIdFamily();

/// See also [unitId].
class UnitIdFamily extends Family<String> {
  /// See also [unitId].
  const UnitIdFamily();

  /// See also [unitId].
  UnitIdProvider call(
    AdStatus status,
  ) {
    return UnitIdProvider(
      status,
    );
  }

  @override
  UnitIdProvider getProviderOverride(
    covariant UnitIdProvider provider,
  ) {
    return call(
      provider.status,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'unitIdProvider';
}

/// See also [unitId].
class UnitIdProvider extends AutoDisposeProvider<String> {
  /// See also [unitId].
  UnitIdProvider(
    AdStatus status,
  ) : this._internal(
          (ref) => unitId(
            ref as UnitIdRef,
            status,
          ),
          from: unitIdProvider,
          name: r'unitIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$unitIdHash,
          dependencies: UnitIdFamily._dependencies,
          allTransitiveDependencies: UnitIdFamily._allTransitiveDependencies,
          status: status,
        );

  UnitIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.status,
  }) : super.internal();

  final AdStatus status;

  @override
  Override overrideWith(
    String Function(UnitIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UnitIdProvider._internal(
        (ref) => create(ref as UnitIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _UnitIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UnitIdProvider && other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UnitIdRef on AutoDisposeProviderRef<String> {
  /// The parameter `status` of this provider.
  AdStatus get status;
}

class _UnitIdProviderElement extends AutoDisposeProviderElement<String>
    with UnitIdRef {
  _UnitIdProviderElement(super.provider);

  @override
  AdStatus get status => (origin as UnitIdProvider).status;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
