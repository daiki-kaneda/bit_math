
import 'dart:async';
import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_audio/flame_audio.dart';

// onPressedを渡して柔軟なボタンを実装したいが、不具合が出る
class PushPlayRouteButton extends PositionComponent with TapCallbacks, HasGameRef<BitmanMath>{
  PushPlayRouteButton({
    required this.gridPosition,
    required this.str,
    });
  final String str;
  final Vector2 gridPosition;


  Sentence? sentence;
  @override
  FutureOr<void> onLoad() {
    sentence = Sentence(
      gridPosition.x, 
      gridPosition.y, 
      str: str, direction: SentenceDirection.horizontal);
    add(sentence!);
    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    log('tapped');
    FlameAudio.play('jingles_NES16.ogg');
    game.router.popUntilNamed(ScreenStatus.splash.name);
    game.router.pushRoute(PlayingRoute(PlayingPage()));
    super.onTapDown(event);
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    super.onTapCancel(event);
  }

  @override
  void onTapUp(TapUpEvent event) {
    super.onTapUp(event);
  }

  @override
  bool containsLocalPoint(Vector2 point) {
    return gridPosition.x*16<=point.x && point.x<=(gridPosition.x*16+16*str.length)
    && gridPosition.y*16<=point.y && point.y<=(gridPosition.y*16 + 32)
    ;
  }

}