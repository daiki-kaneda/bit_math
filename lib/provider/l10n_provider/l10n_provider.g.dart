// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'l10n_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(l10n)
final l10nProvider = L10nProvider._();

final class L10nProvider
    extends
        $FunctionalProvider<
          AppLocalizations?,
          AppLocalizations?,
          AppLocalizations?
        >
    with $Provider<AppLocalizations?> {
  L10nProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'l10nProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$l10nHash();

  @$internal
  @override
  $ProviderElement<AppLocalizations?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppLocalizations? create(Ref ref) {
    return l10n(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLocalizations? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLocalizations?>(value),
    );
  }
}

String _$l10nHash() => r'0e58d7d6f145f5852806c6f1d2269c523b323542';
