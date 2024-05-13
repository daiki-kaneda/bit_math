
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/screens/home_page/home_page.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class HomeButton extends SpriteComponent with HasGameRef<BitmanMath>,TapCallbacks{

  HomeButton({super.sprite,});
  @override
  FutureOr<void> onLoad() {
    anchor = Anchor.center;
    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    scale = Vector2.all(0.85);
    super.onTapDown(event);
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    scale = Vector2.all(1);
    super.onTapCancel(event);
  }

  @override
  void onTapUp(TapUpEvent event) {
    scale = Vector2.all(1);
     game.router.pushReplacement(Route(() => HomePage()));
    super.onTapUp(event);
  }
}