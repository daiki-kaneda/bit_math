// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_data_helper_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SaveDataNotifier)
final saveDataProvider = SaveDataNotifierProvider._();

final class SaveDataNotifierProvider
    extends $AsyncNotifierProvider<SaveDataNotifier, SaveDataHelper> {
  SaveDataNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveDataNotifierHash();

  @$internal
  @override
  SaveDataNotifier create() => SaveDataNotifier();
}

String _$saveDataNotifierHash() => r'902cee4d42ef6ffe49c997d9d2b9db7408f05940';

abstract class _$SaveDataNotifier extends $AsyncNotifier<SaveDataHelper> {
  FutureOr<SaveDataHelper> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<SaveDataHelper>, SaveDataHelper>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<SaveDataHelper>, SaveDataHelper>,
              AsyncValue<SaveDataHelper>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
