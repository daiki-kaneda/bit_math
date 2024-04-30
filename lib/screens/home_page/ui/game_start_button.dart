

import 'dart:async';
import 'dart:math';

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/input.dart';
import 'package:flame_audio/flame_audio.dart';


//SpriteButtonComponent({Sprite? button, Sprite? buttonDown, void onPressed()?, Vector2? position, Vector2? size, Vector2? scale, double? angle, Anchor? anchor, Iterable<Component>? children, int? priority})
class GameStartButton extends SpriteButtonComponent with HasGameRef<BitmanMath>{
  GameStartButton({
    super.position,super.size
  });


  @override
  FutureOr<void> onLoad() {
    button = getSprite(SpriteSheets.uiSprites, 651, 365, 108, 48);
    buttonDown = button..paint.color.withOpacity(0.5);
    anchor=Anchor.center;
    onPressed =() {
       game.router.pushNamed(ScreenStatus.playingModeConfigure.name);
    };
    return super.onLoad();
  }
}