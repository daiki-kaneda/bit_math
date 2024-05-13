
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/screens/home_page/home_page.dart';
import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class RetryButton extends SpriteComponent with HasGameRef<BitmanMath>,TapCallbacks{

  RetryButton({super.sprite,});
  @override
  FutureOr<void> onLoad() {
    anchor = Anchor.center;
    scale = Vector2(-1, 1);
    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    scale = Vector2(-0.85,0.85);;
    super.onTapDown(event);
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    scale = Vector2(-1,1);;
    super.onTapCancel(event);
  }

  @override
  void onTapUp(TapUpEvent event) {
    scale = Vector2(-1,1);
    // retry logic
    game.router.pop();
    game.router.pushReplacement(Route(() => PlayingPage()));
    super.onTapUp(event);
  }
}