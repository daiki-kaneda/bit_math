import 'dart:typed_data';

import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sound/public/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'audio_provider.g.dart';

enum AudioStatus {
  start,
  solved,
  failed,
  gameover;

  String get path {
    switch (this) {
      case start:
        return 'jingles_NES16.mp3';
      case solved:
        return 'jingles_NES14.mp3';
      case failed:
        return 'jingles_NES15.mp3';
      case gameover:
        return 'jingles_NES00.mp3';
    }
  }

  Future<Uint8List> getAssetData() async {
    var asset = await rootBundle.load('assets/audio/$path');
    return asset.buffer.asUint8List();
  }
}

@riverpod
class AudioPlayer extends _$AudioPlayer {
  @override
  FutureOr<FlutterSoundPlayer> build() async {
    // load audio

    final player = FlutterSoundPlayer();
    await player.openPlayer();
    return player;
  }

  Future<void> play(AudioStatus status) async {
    final isSound = (await ref.read(saveDataProvider.future)).setting.isSound;
    if (isSound) {
      final player = await future;
      await player.startPlayer(fromDataBuffer: await status.getAssetData(),
      codec: Codec.mp3);
    }
  }
}
