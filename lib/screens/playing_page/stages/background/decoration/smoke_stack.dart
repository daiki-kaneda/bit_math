

import 'dart:async';
import 'dart:math';

import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';

class SmokeStack extends SpriteComponent {

  SmokeStack({
    required double x,
    required double y
  }):gridPosition=Vector2(x, y);

  final Vector2 gridPosition;

  static final random = Random();
  @override
  FutureOr<void> onLoad() {
    sprite = getSprite(
      SpriteSheets.chimney, 
      2*(1+random.nextInt(20))*16, 
      0, 
      16, 
      16*20);
    position=gridPosition*16;
    return super.onLoad();
  }
}