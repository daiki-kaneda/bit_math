
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class UIButton extends SpriteComponent with HasGameReference<BitmanMath>,TapCallbacks{

  UIButton({
    super.sprite,
    required this.onPressed});

  void Function() onPressed;
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
    onPressed;
    super.onTapUp(event);
  }
}