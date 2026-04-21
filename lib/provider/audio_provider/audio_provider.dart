import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'audio_provider.g.dart';

enum AudioStatus{
  start,solved,failed,gameover;

  String get path{
    switch(this){
      case start:return 'jingles_NES16.mp3';
      case solved:return 'jingles_NES14.mp3';
      case failed:return 'jingles_NES15.mp3';
      case gameover:return 'jingles_NES00.mp3';
    }
  }
}

@riverpod
class AudioPlayer extends _$AudioPlayer {
  @override
  FutureOr<void> build() async{
    // load audio
    await FlameAudio.audioCache.loadAll([
      'jingles_NES00.mp3',
      'jingles_NES13.mp3',
      'jingles_NES14.mp3',
      'jingles_NES15.mp3',
      'jingles_NES16.mp3'
    ]);
  }

  Future<void> play(AudioStatus status)async{
    final isSound = (await ref.read(saveDataProvider.future)).setting.isSound;
    if(isSound)FlameAudio.play(status.path);
  }
}