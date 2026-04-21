// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AudioPlayer)
final audioPlayerProvider = AudioPlayerProvider._();

final class AudioPlayerProvider
    extends $AsyncNotifierProvider<AudioPlayer, FlutterSoundPlayer> {
  AudioPlayerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'audioPlayerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$audioPlayerHash();

  @$internal
  @override
  AudioPlayer create() => AudioPlayer();
}

String _$audioPlayerHash() => r'c032602b1ad899aadb26e02f6e795c3d6590b21d';

abstract class _$AudioPlayer extends $AsyncNotifier<FlutterSoundPlayer> {
  FutureOr<FlutterSoundPlayer> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<FlutterSoundPlayer>, FlutterSoundPlayer>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FlutterSoundPlayer>, FlutterSoundPlayer>,
              AsyncValue<FlutterSoundPlayer>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
