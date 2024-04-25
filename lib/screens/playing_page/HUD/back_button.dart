
import 'dart:async';
import 'dart:developer';
import 'dart:math' hide log;

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/input.dart';


//SpriteButtonComponent({Sprite? button, Sprite? buttonDown, void onPressed()?, Vector2? position, Vector2? size, Vector2? scale, double? angle, Anchor? anchor, Iterable<Component>? children, int? priority})
class BackButton extends SpriteButtonComponent with HasGameRef<BitmanMath>{
  BackButton({
    super.position,super.size
  });


  @override
  FutureOr<void> onLoad() {
    button = getSprite(SpriteSheets.coloredTransparentPacked, 40*16, 13*16, 16, 16);
    buttonDown = button..paint.color.withOpacity(0.5);
    onPressed =() {
      game.router.pushReplacementNamed(ScreenStatus.result.name);
    };
    return super.onLoad();
  }
}