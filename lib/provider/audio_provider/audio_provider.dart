import 'dart:typed_data';

import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sound/public/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'audio_provider.g.dart';

enum AudioStatus {
  start,
  heal,
  jump1,
  jump2,
  solved,
  failed,
  gameover;

  String get path {
    switch (this) {
      case start:
        return 'jingles_NES16.mp3';
      case heal:
        return 'powerUp5.ogg';
      case jump1:
        return 'phaseJump1.ogg';
      case jump2:
        return 'phaseJump2.ogg';
      case solved:
        return 'jingles_NES14.mp3';
      case failed:
        return 'jingles_NES15.mp3';
      case gameover:
        return 'jingles_NES00.mp3';
    }
  }

  Codec get codec{
        switch (this) {
      case start:
        return Codec.mp3;
      case heal:
        return Codec.vorbisOGG;
      case jump1:
        return Codec.vorbisOGG;
      case jump2:
        return Codec.vorbisOGG;
      case solved:
        return Codec.mp3;
      case failed:
        return Codec.mp3;
      case gameover:
        return Codec.mp3;
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
      codec: status.codec);
    }
  }
}
